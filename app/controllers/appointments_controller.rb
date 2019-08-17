class AppointmentsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  
  def index
  @customer = Customer.find_by_user_id(current_user.id) 
  # @appointments = @customer.appointments
  @appointments = Appointment.all
  end

  def show
  # @customer = Customer.find(params[:customer_id])
  @appointment = Appointment.find(params[:id])
  end



  def new
    @appointment = Appointment.new 
    respond_to do |format|
      format.html # new.html.erb 
      # format.json {render json: @barber} 
      format.json {render json: @appointment} 
    end
  end


  # def new 
  #   @customer = Customer.find_by_user_id(current_user.id)
    
  #   # Associate an review object with movie 1
  #   @appointment = @customer.appointments.build
  #   end

# GET /appointments/1/edit
def edit
# @customer= Customer.find(params[:customer_id])

# @appointment = @customer.appointments.find(params[:id])
@appointment = Appointment.find(params[:id])

end


# POST
def create
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

  # @appointment = Appointment.new(appointment_params)
  # @customer = Customer.find_by_user_id(current_user.id)
  # @barber = Barber.first
  # @appointment = @customer.appointments.build(params.require(:appointment).permit(appointment_params))
  # @appointment = @barber.appointments.build(params.require(:appointment).permit(appointment_params))
  # if @appointment.save
  # # Save the appointment successfully
  # redirect_to customer_appointment_url(@customer, @appointment)
  # else
  # render :action => "new"
  # end
  # end


  # POST /appointments
  # POST /appointments.json
  # def create
  # @appointment = Appointment.new(appointment_params)

  # respond_to do |format|
  #   if @appointment.save
  #     format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
  #     format.json { render :show, status: :created, location: @appointment }
  #   else
  #     format.html { render :new }
  #     format.json { render json: @appointment.errors, status: :unprocessable_entity }
  #   end
  # end
  # end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
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

  # DELETE /appointments/1
  #  DELETE /appointments/1.json
  # def destroy
  #   @appointment.destroy
  #   respond_to do |format|
  #     format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

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
      params.require(:appointment).permit(:appointment_time, :appointment_date, :appointment_duration, :status, :total_cost, :barber_id)
    end   
end
