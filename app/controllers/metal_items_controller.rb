class MetalItemsController < ApplicationController
  before_action :set_metal_item, only: [:show, :edit, :update, :destroy]

  # GET /metal_items
  # GET /metal_items.json
  def index
    @metal_items = MetalItem.all
  end

  # GET /metal_items/1
  # GET /metal_items/1.json
  def show
  end

  # GET /metal_items/new
  def new
    @metal_item = MetalItem.new
  end

  # GET /metal_items/1/edit
  def edit
  end

  # POST /metal_items
  # POST /metal_items.json
  def create
    @metal_item = MetalItem.new(metal_item_params)

    respond_to do |format|
      if @metal_item.save
        format.html { redirect_to @metal_item, notice: 'Metal item was successfully created.' }
        format.json { render :show, status: :created, location: @metal_item }
      else
        format.html { render :new }
        format.json { render json: @metal_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metal_items/1
  # PATCH/PUT /metal_items/1.json
  def update
    respond_to do |format|
      if @metal_item.update(metal_item_params)
        format.html { redirect_to @metal_item, notice: 'Metal item was successfully updated.' }
        format.json { render :show, status: :ok, location: @metal_item }
      else
        format.html { render :edit }
        format.json { render json: @metal_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metal_items/1
  # DELETE /metal_items/1.json
  def destroy
    @metal_item.destroy
    respond_to do |format|
      format.html { redirect_to metal_items_url, notice: 'Metal item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metal_item
      @metal_item = MetalItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metal_item_params
      params.require(:metal_item).permit(:metal_item_desc, :net_weight, :unit_price, :metal_type_id)
    end
end
