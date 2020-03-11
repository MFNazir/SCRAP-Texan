class StateProvincesController < ApplicationController
  before_action :set_state_province, only: [:show, :edit, :update, :destroy]

  # GET /state_provinces
  # GET /state_provinces.json
  def index
    @state_provinces = StateProvince.all
  end

  # GET /state_provinces/1
  # GET /state_provinces/1.json
  def show
  end

  # GET /state_provinces/new
  def new
    @state_province = StateProvince.new
  end

  # GET /state_provinces/1/edit
  def edit
  end

  # POST /state_provinces
  # POST /state_provinces.json
  def create
    @state_province = StateProvince.new(state_province_params)

    respond_to do |format|
      if @state_province.save
        format.html { redirect_to @state_province, notice: 'State province was successfully created.' }
        format.json { render :show, status: :created, location: @state_province }
      else
        format.html { render :new }
        format.json { render json: @state_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_provinces/1
  # PATCH/PUT /state_provinces/1.json
  def update
    respond_to do |format|
      if @state_province.update(state_province_params)
        format.html { redirect_to @state_province, notice: 'State province was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_province }
      else
        format.html { render :edit }
        format.json { render json: @state_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_provinces/1
  # DELETE /state_provinces/1.json
  def destroy
    @state_province.destroy
    respond_to do |format|
      format.html { redirect_to state_provinces_url, notice: 'State province was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_province
      @state_province = StateProvince.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_province_params
      params.require(:state_province).permit(:state_province_name)
    end
end
