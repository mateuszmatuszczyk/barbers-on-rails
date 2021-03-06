class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @customers = Customer.all
  end

  def show
  end

  def signedinuserprofile
    customer = Customer.find_by_user_id(current_user.id) 
    user = User.find_by_id(current_user.id)

    if customer.nil? 
      redirect_to "/customers/new"
      
    elsif user.admin 
      redirect_to "/customers"
    else
      @customer = Customer.find_by_user_id(current_user.id) 
      redirect_to "/customers/#{@customer.id}" 
    end
  end
  # GET /customers/new
  # def new
  #   @customer = Customer.new
  # end
  def new
    @customer = Customer.new
    @customer.user_id = current_user.id
    respond_to do |format|
      format.html
      format.json {render json: @customer } 
    end
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)
    @customer.user_id = current_user.id
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'New Customer was successfully created. Thank you!' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Thank you! Customer details were successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_index_url, notice: 'Thank you! Customer record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_name, :customer_number, :customer_photo_path)
    end
end
