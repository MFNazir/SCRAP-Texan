class InvoiceTypesController < ApplicationController
  before_action :set_invoice_type, only: [:show, :edit, :update, :destroy]

  # GET /invoice_types
  # GET /invoice_types.json
  def index
    @invoice_types = InvoiceType.all
  end

  # GET /invoice_types/1
  # GET /invoice_types/1.json
  def show
  end

  # GET /invoice_types/new
  def new
    @invoice_type = InvoiceType.new
  end

  # GET /invoice_types/1/edit
  def edit
  end

  # POST /invoice_types
  # POST /invoice_types.json
  def create
    @invoice_type = InvoiceType.new(invoice_type_params)

    respond_to do |format|
      if @invoice_type.save
        format.html { redirect_to @invoice_type, notice: 'Invoice type was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_type }
      else
        format.html { render :new }
        format.json { render json: @invoice_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_types/1
  # PATCH/PUT /invoice_types/1.json
  def update
    respond_to do |format|
      if @invoice_type.update(invoice_type_params)
        format.html { redirect_to @invoice_type, notice: 'Invoice type was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_type }
      else
        format.html { render :edit }
        format.json { render json: @invoice_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_types/1
  # DELETE /invoice_types/1.json
  def destroy
    @invoice_type.destroy
    respond_to do |format|
      format.html { redirect_to invoice_types_url, notice: 'Invoice type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_type
      @invoice_type = InvoiceType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_type_params
      params.require(:invoice_type).permit(:invoice_type, :invoice_type_desc)
    end
end
