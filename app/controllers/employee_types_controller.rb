class EmployeeTypesController < ApplicationController
  before_action :set_employee_type, only: [:show, :edit, :update, :destroy]

  # GET /employee_types
  # GET /employee_types.json
  def index
    @employee_types = EmployeeType.all
  end

  # GET /employee_types/1
  # GET /employee_types/1.json
  def show
  end

  # GET /employee_types/new
  def new
    @employee_type = EmployeeType.new
  end

  # GET /employee_types/1/edit
  def edit
  end

  # POST /employee_types
  # POST /employee_types.json
  def create
    @employee_type = EmployeeType.new(employee_type_params)

    respond_to do |format|
      if @employee_type.save
        format.html { redirect_to @employee_type, notice: 'Employee type was successfully created.' }
        format.json { render :show, status: :created, location: @employee_type }
      else
        format.html { render :new }
        format.json { render json: @employee_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_types/1
  # PATCH/PUT /employee_types/1.json
  def update
    respond_to do |format|
      if @employee_type.update(employee_type_params)
        format.html { redirect_to @employee_type, notice: 'Employee type was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_type }
      else
        format.html { render :edit }
        format.json { render json: @employee_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_types/1
  # DELETE /employee_types/1.json
  def destroy
    @employee_type.destroy
    respond_to do |format|
      format.html { redirect_to employee_types_url, notice: 'Employee type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_type
      @employee_type = EmployeeType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_type_params
      params.require(:employee_type).permit(:employee_type, :employee_type_desc)
    end
end
