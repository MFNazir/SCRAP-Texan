class InvoiceStatusesController < ApplicationController
  before_action :set_invoice_status, only: [:show, :edit, :update, :destroy]

  # GET /invoice_statuses
  # GET /invoice_statuses.json
  def index
    @invoice_statuses = InvoiceStatus.all
  end

  # GET /invoice_statuses/1
  # GET /invoice_statuses/1.json
  def show
  end

  # GET /invoice_statuses/new
  def new
    @invoice_status = InvoiceStatus.new
  end

  # GET /invoice_statuses/1/edit
  def edit
  end

  # POST /invoice_statuses
  # POST /invoice_statuses.json
  def create
    @invoice_status = InvoiceStatus.new(invoice_status_params)

    respond_to do |format|
      if @invoice_status.save
        format.html { redirect_to @invoice_status, notice: 'Invoice status was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_status }
      else
        format.html { render :new }
        format.json { render json: @invoice_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_statuses/1
  # PATCH/PUT /invoice_statuses/1.json
  def update
    respond_to do |format|
      if @invoice_status.update(invoice_status_params)
        format.html { redirect_to @invoice_status, notice: 'Invoice status was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_status }
      else
        format.html { render :edit }
        format.json { render json: @invoice_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_statuses/1
  # DELETE /invoice_statuses/1.json
  def destroy
    @invoice_status.destroy
    respond_to do |format|
      format.html { redirect_to invoice_statuses_url, notice: 'Invoice status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_status
      @invoice_status = InvoiceStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_status_params
      params.require(:invoice_status).permit(:invoice_status, :invoice_status_desc)
    end
end
