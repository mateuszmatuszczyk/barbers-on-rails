class AdminDashboardController < ApplicationController

before_action :authenticate_user! 
before_action :ensure_admin

  def ensure_admin
      unless current_user && current_user.admin?
        redirect_to "/users/sign_in", notice: 'You do not have permissions to view this resource.'
      end
  end


  def index
  	@barbers = Barber.all
  	@users = User.all
  	@customers = Customer.all
  	@appointments = Appointment.all
  	@services = Service.all

  end
end
