class FeatureItemsController < ApplicationController
  before_action :set_feature_item, only: %i[ show edit update destroy ]

  # GET /feature_items or /feature_items.json
  def index
    @feature_items = FeatureItem.all
  end

  # GET /feature_items/1 or /feature_items/1.json
  def show
  end

  # GET /feature_items/new
  def new
    @feature_item = FeatureItem.new
  end

  # GET /feature_items/1/edit
  def edit
  end

  # POST /feature_items or /feature_items.json
  def create
    @feature_item = FeatureItem.new(feature_item_params)

    respond_to do |format|
      if @feature_item.save
        format.html { redirect_to @feature_item, notice: "Feature item was successfully created." }
        format.json { render :show, status: :created, location: @feature_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feature_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feature_items/1 or /feature_items/1.json
  def update
    respond_to do |format|
      if @feature_item.update(feature_item_params)
        format.html { redirect_to @feature_item, notice: "Feature item was successfully updated." }
        format.json { render :show, status: :ok, location: @feature_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feature_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_items/1 or /feature_items/1.json
  def destroy
    @feature_item.destroy
    respond_to do |format|
      format.html { redirect_to feature_items_url, notice: "Feature item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature_item
      @feature_item = FeatureItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feature_item_params
      params.require(:feature_item).permit(:feature_section_id, :position, :header, :icon_class, :style_color)
    end
end
