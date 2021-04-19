class PricingItemsController < ApplicationController
  before_action :set_pricing_item, only: %i[ show edit update destroy ]

  # GET /pricing_items or /pricing_items.json
  def index
    @pricing_items = PricingItem.all
  end

  # GET /pricing_items/1 or /pricing_items/1.json
  def show
  end

  # GET /pricing_items/new
  def new
    @pricing_item = PricingItem.new
  end

  # GET /pricing_items/1/edit
  def edit
  end

  # POST /pricing_items or /pricing_items.json
  def create
    @pricing_item = PricingItem.new(pricing_item_params)

    respond_to do |format|
      if @pricing_item.save
        format.html { redirect_to @pricing_item, notice: "Pricing item was successfully created." }
        format.json { render :show, status: :created, location: @pricing_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pricing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricing_items/1 or /pricing_items/1.json
  def update
    respond_to do |format|
      if @pricing_item.update(pricing_item_params)
        format.html { redirect_to @pricing_item, notice: "Pricing item was successfully updated." }
        format.json { render :show, status: :ok, location: @pricing_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pricing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_items/1 or /pricing_items/1.json
  def destroy
    @pricing_item.destroy
    respond_to do |format|
      format.html { redirect_to pricing_items_url, notice: "Pricing item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing_item
      @pricing_item = PricingItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pricing_item_params
      params.require(:pricing_item).permit(:pricing_section_id, :position, :name, :price)
    end
end
