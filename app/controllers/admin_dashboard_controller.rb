class AdminDashboardController < ApplicationController

before_action :authenticate_user! 
before_action :ensure_admin

  def ensure_admin
      unless current_user && current_user.admin?
        redirect_to "/users/sign_in", notice: 'You do not have permissions to view this resource.'
      end
  end


  def index
  	@barbers = Barber.where(["barber_name LIKE ?", "%#{params[:search_barbers]}%"])
  	@users = User.all
  	@customers =  Customer.where(["customer_name LIKE ?", "%#{params[:search_customers]}%"])
  	@services = Service.where(["service_name LIKE ?", "%#{params[:search_services]}%"])
    
  	@appointments = Appointment.where(["status LIKE ?", "%#{params[:search_appointments]}%"])
  end
end
