class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 

  def index
    @barbers = Barber.all
    @appointments = Appointment.all
    @customer = Customer.find_by_user_id(current_user.id) 
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
    puts("\n\n\n APPOINTMENT:"+@appointment.to_json+"\n\n\n")
    puts("\n\n\n BARBER:"+@appointment.barber.to_json+"\n\n\n")
    puts("\n\n\n CUSTOMER:"+@appointment.customer.to_json+"\n\n\n")
    puts("\n\n\n SERVICES:"+@appointment.services.to_json+"\n\n\n")
    temp_total_cost = 0
    temp_total_duration = 0
    @appointment.services.each do |service| 
      temp_total_cost = temp_total_cost +service.service_price 
      temp_total_duration = temp_total_duration + service.service_duration 
    end
    puts("\n\n\nTOTAL COST: "+temp_total_cost.to_s) 
    puts("\n\n\nTOTAL DURATION: "+temp_total_duration.to_s) 
    
    @appointment.appointment_duration = temp_total_duration
    @appointment.total_cost = temp_total_cost

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
      format.html { redirect_to admin_dashboard_index_path }
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
