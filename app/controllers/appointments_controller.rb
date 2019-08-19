class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 

  def index
    @barbers = Barber.all
    @appointments = Appointment.all
    @customer = Customer.find_by_user_id(current_user.id) 

    # @services = Service.all
    # @appointments = @customer.appointments
  end

  def show
    # @customer = Customer.find(params[:customer_id])
    @appointment = Appointment.find(params[:id])
    @services = @appointment.services
  end



  def new
    @barbers = Barber.all
    @customer = Customer.find_by_user_id(current_user.id)
    @appointment = Appointment.new
    respond_to do |format|
      format.html # new.html.erb 
      # format.json {render json: @barber} 
      format.json {render json: @appointment} 
    end
  end

  def edit
    @barbers = Barber.all
  # @customer= Customer.find(params[:customer_id])

  # @appointment = @customer.appointments.find(params[:id])
  @appointment = Appointment.find(params[:id])

  end


  # POST
  def create
    # puts("\n\n SERVICES \n"+params[:date]+"\n\n\n")
    @barbers = Barber.all
    @appointment = Appointment.new(appointment_params)
    @appointment.customer = Customer.find_by_user_id(current_user.id)
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
    @customer = Customer.find(params[:customer_id])
    @appointment = Appointment.find(params[:appointment_id])
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to customer_appointments_path(@customer) }
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
