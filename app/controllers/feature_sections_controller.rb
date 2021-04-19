class FeatureSectionsController < ApplicationController
  before_action :set_feature_section, only: %i[ show edit update destroy ]

  # GET /feature_sections or /feature_sections.json
  def index
    @feature_sections = FeatureSection.all
  end

  # GET /feature_sections/1 or /feature_sections/1.json
  def show
  end

  # GET /feature_sections/new
  def new
    @feature_section = FeatureSection.new
  end

  # GET /feature_sections/1/edit
  def edit
  end

  # POST /feature_sections or /feature_sections.json
  def create
    @feature_section = FeatureSection.new(feature_section_params)

    respond_to do |format|
      if @feature_section.save
        format.html { redirect_to @feature_section, notice: "Feature section was successfully created." }
        format.json { render :show, status: :created, location: @feature_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feature_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feature_sections/1 or /feature_sections/1.json
  def update
    respond_to do |format|
      if @feature_section.update(feature_section_params)
        format.html { redirect_to @feature_section, notice: "Feature section was successfully updated." }
        format.json { render :show, status: :ok, location: @feature_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feature_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_sections/1 or /feature_sections/1.json
  def destroy
    @feature_section.destroy
    respond_to do |format|
      format.html { redirect_to feature_sections_url, notice: "Feature section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature_section
      @feature_section = FeatureSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feature_section_params
      params.require(:feature_section).permit(:section_id, :description)
    end
end
