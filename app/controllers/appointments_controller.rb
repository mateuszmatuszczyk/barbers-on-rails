require 'appointment-calculator'

class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 

  def index
    # @barbers = Barber.all
    if current_user.admin 
      @appointments = Appointment.all
    else
      @customer = Customer.find_by_user_id(current_user.id)
      @appointments = @customer.appointments.order('created_at DESC').limit(50)
      # @appointments = Appointment.all.order('created_at DESC').limit(50)
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @services = @appointment.services
  end

  def new
    @barbers = Barber.all
    @customer = Customer.find_by_user_id(current_user.id)
    @appointment = Appointment.new
    respond_to do |format|
      format.html
      format.json {render json: @appointment} 
    end
  end
  
  def edit
    @barbers = Barber.all
    @appointment = Appointment.find(params[:id])
  end


  # POST
  def create
    # puts("\n\n SERVICES \n"+params[:date]+"\n\n\n")
    @barbers = Barber.all
    @appointment = Appointment.new(appointment_params)
    @appointment.customer = Customer.find_by_user_id(current_user.id)
    @services = @appointment.services
    # puts("\n\n\n APPOINTMENT:"+@appointment.to_json+"\n\n\n")
    # puts("\n\n\n BARBER:"+@appointment.barber.to_json+"\n\n\n")
    # puts("\n\n\n CUSTOMER:"+@appointment.customer.to_json+"\n\n\n")
    
    # services_json = services.to_json
    # @appointment.services.each do |service| 
    #   temp_total_cost = temp_total_cost +service.service_price 
    #   temp_total_duration = temp_total_duration + service.service_duration 
    # end

    puts("\n\n\n SERVICES: \n\n\n")
    pp @services[0].service_price.to_s
    puts(@services)

    result = AppointmentCalculator.calculate(@services)
    # puts("\n\n\n RESULT: \n\n\n")
    # pp result
    # puts("\n\n\n TOTAL COST: \n\n\n")
    # pp result[:total_cost]

    # pp @appointment
    @appointment.appointment_duration = result[:total_duration]
    @appointment.total_cost = result[:total_cost]
    
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
    respond_to do |format|
      @services = @appointment.services
      result = AppointmentCalculator.calculate(@services)
      @appointment.appointment_duration = result[:total_duration]
      @appointment.total_cost = result[:total_cost]
      if @appointment.update(appointment_params)
       
    
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # @customer = Customer.find(params[:customer_id])
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_index_path, notice: 'Appointment was successfully destroyed.'}
      format.xml { head :ok }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def appointment_params
    params.require(:appointment).permit(:appointment_time, :appointment_date, :appointment_duration, :status, :total_cost, :barber_id, service_ids:[])
  end   

end
