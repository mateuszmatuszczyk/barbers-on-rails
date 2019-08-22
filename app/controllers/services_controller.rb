class ServicesController < ApplicationController
before_action :authenticate_user! 
before_action :authenticate_user!
  def index
    @services = Service.all
  end
  
  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new 
    respond_to do |format|
      format.html # new.html.erb 
      # format.json {render json: @barber} 
      format.json {render json: @service} 
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    @service = Service.find(params[:id])
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_index_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:service_name, :service_description, :service_duration, :service_price)
    end
end
