class CustomerVehiclesController < ApplicationController
  before_action :set_customer_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /customer_vehicles
  # GET /customer_vehicles.json
  def index
    @customer_vehicles = CustomerVehicle.all
  end

  # GET /customer_vehicles/1
  # GET /customer_vehicles/1.json
  def show
  end

  # GET /customer_vehicles/new
  def new
    @customer_vehicle = CustomerVehicle.new
  end

  # GET /customer_vehicles/1/edit
  def edit
  end

  # POST /customer_vehicles
  # POST /customer_vehicles.json
  def create
    @customer_vehicle = CustomerVehicle.new(customer_vehicle_params)

    respond_to do |format|
      if @customer_vehicle.save
        format.html { redirect_to @customer_vehicle, notice: 'Customer vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @customer_vehicle }
      else
        format.html { render :new }
        format.json { render json: @customer_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_vehicles/1
  # PATCH/PUT /customer_vehicles/1.json
  def update
    respond_to do |format|
      if @customer_vehicle.update(customer_vehicle_params)
        format.html { redirect_to @customer_vehicle, notice: 'Customer vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @customer_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_vehicles/1
  # DELETE /customer_vehicles/1.json
  def destroy
    @customer_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to customer_vehicles_url, notice: 'Customer vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_vehicle
      @customer_vehicle = CustomerVehicle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_vehicle_params
      params.require(:customer_vehicle).permit(:year, :color, :license_plate_number, :make_id, :vehicle_status_id, :state_province_id, :customer_id)
    end
end
