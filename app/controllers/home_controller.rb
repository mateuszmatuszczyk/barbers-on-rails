class HomeController < ApplicationController

before_action :authenticate_user! 
before_action :ensure_admin

  def ensure_admin
      unless current_user && current_user.admin?
        redirect_to "/users/sign_in"
        # redirect_to @customer, notice: 'You do not have permissions to view this resource.'
        # render :text => "Access Error Message", :status => :unauthorized
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
