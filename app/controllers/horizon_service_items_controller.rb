class HorizonServiceItemsController < ApplicationController
  before_action :set_horizon_service_item, only: %i[ show edit update destroy ]

  # GET /horizon_service_items or /horizon_service_items.json
  def index
    @horizon_service_items = HorizonServiceItem.all
  end

  # GET /horizon_service_items/1 or /horizon_service_items/1.json
  def show
  end

  # GET /horizon_service_items/new
  def new
    @horizon_service_item = HorizonServiceItem.new
  end

  # GET /horizon_service_items/1/edit
  def edit
  end

  # POST /horizon_service_items or /horizon_service_items.json
  def create
    @horizon_service_item = HorizonServiceItem.new(horizon_service_item_params)

    respond_to do |format|
      if @horizon_service_item.save
        format.html { redirect_to @horizon_service_item, notice: "Horizon service item was successfully created." }
        format.json { render :show, status: :created, location: @horizon_service_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @horizon_service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horizon_service_items/1 or /horizon_service_items/1.json
  def update
    respond_to do |format|
      if @horizon_service_item.update(horizon_service_item_params)
        format.html { redirect_to @horizon_service_item, notice: "Horizon service item was successfully updated." }
        format.json { render :show, status: :ok, location: @horizon_service_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @horizon_service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horizon_service_items/1 or /horizon_service_items/1.json
  def destroy
    @horizon_service_item.destroy
    respond_to do |format|
      format.html { redirect_to horizon_service_items_url, notice: "Horizon service item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horizon_service_item
      @horizon_service_item = HorizonServiceItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horizon_service_item_params
      params.require(:horizon_service_item).permit(:service_section_id, :position, :header, :description, :icon_class, :active)
    end
end
