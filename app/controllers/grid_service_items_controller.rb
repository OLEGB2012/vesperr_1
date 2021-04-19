class GridServiceItemsController < ApplicationController
  before_action :set_grid_service_item, only: %i[ show edit update destroy ]

  # GET /grid_service_items or /grid_service_items.json
  def index
    @grid_service_items = GridServiceItem.all
  end

  # GET /grid_service_items/1 or /grid_service_items/1.json
  def show
  end

  # GET /grid_service_items/new
  def new
    @grid_service_item = GridServiceItem.new
  end

  # GET /grid_service_items/1/edit
  def edit
  end

  # POST /grid_service_items or /grid_service_items.json
  def create
    @grid_service_item = GridServiceItem.new(grid_service_item_params)

    respond_to do |format|
      if @grid_service_item.save
        format.html { redirect_to @grid_service_item, notice: "Grid service item was successfully created." }
        format.json { render :show, status: :created, location: @grid_service_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grid_service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grid_service_items/1 or /grid_service_items/1.json
  def update
    respond_to do |format|
      if @grid_service_item.update(grid_service_item_params)
        format.html { redirect_to @grid_service_item, notice: "Grid service item was successfully updated." }
        format.json { render :show, status: :ok, location: @grid_service_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grid_service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grid_service_items/1 or /grid_service_items/1.json
  def destroy
    @grid_service_item.destroy
    respond_to do |format|
      format.html { redirect_to grid_service_items_url, notice: "Grid service item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grid_service_item
      @grid_service_item = GridServiceItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grid_service_item_params
      params.require(:grid_service_item).permit(:service_section_id, :position, :header, :description, :active)
    end
end
