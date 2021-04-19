class PricingCapabilitiesController < ApplicationController
  before_action :set_pricing_capability, only: %i[ show edit update destroy ]

  # GET /pricing_capabilities or /pricing_capabilities.json
  def index
    @pricing_capabilities = PricingCapability.all
  end

  # GET /pricing_capabilities/1 or /pricing_capabilities/1.json
  def show
  end

  # GET /pricing_capabilities/new
  def new
    @pricing_capability = PricingCapability.new
  end

  # GET /pricing_capabilities/1/edit
  def edit
  end

  # POST /pricing_capabilities or /pricing_capabilities.json
  def create
    @pricing_capability = PricingCapability.new(pricing_capability_params)

    respond_to do |format|
      if @pricing_capability.save
        format.html { redirect_to @pricing_capability, notice: "Pricing capability was successfully created." }
        format.json { render :show, status: :created, location: @pricing_capability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pricing_capability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricing_capabilities/1 or /pricing_capabilities/1.json
  def update
    respond_to do |format|
      if @pricing_capability.update(pricing_capability_params)
        format.html { redirect_to @pricing_capability, notice: "Pricing capability was successfully updated." }
        format.json { render :show, status: :ok, location: @pricing_capability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pricing_capability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_capabilities/1 or /pricing_capabilities/1.json
  def destroy
    @pricing_capability.destroy
    respond_to do |format|
      format.html { redirect_to pricing_capabilities_url, notice: "Pricing capability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing_capability
      @pricing_capability = PricingCapability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pricing_capability_params
      params.require(:pricing_capability).permit(:pricing_item_id, :position, :capability_id, :status)
    end
end
