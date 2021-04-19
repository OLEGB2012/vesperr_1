class PricingSectionsController < ApplicationController
  before_action :set_pricing_section, only: %i[ show edit update destroy ]

  # GET /pricing_sections or /pricing_sections.json
  def index
    @pricing_sections = PricingSection.all
  end

  # GET /pricing_sections/1 or /pricing_sections/1.json
  def show
  end

  # GET /pricing_sections/new
  def new
    @pricing_section = PricingSection.new
  end

  # GET /pricing_sections/1/edit
  def edit
  end

  # POST /pricing_sections or /pricing_sections.json
  def create
    @pricing_section = PricingSection.new(pricing_section_params)

    respond_to do |format|
      if @pricing_section.save
        format.html { redirect_to @pricing_section, notice: "Pricing section was successfully created." }
        format.json { render :show, status: :created, location: @pricing_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pricing_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricing_sections/1 or /pricing_sections/1.json
  def update
    respond_to do |format|
      if @pricing_section.update(pricing_section_params)
        format.html { redirect_to @pricing_section, notice: "Pricing section was successfully updated." }
        format.json { render :show, status: :ok, location: @pricing_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pricing_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_sections/1 or /pricing_sections/1.json
  def destroy
    @pricing_section.destroy
    respond_to do |format|
      format.html { redirect_to pricing_sections_url, notice: "Pricing section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing_section
      @pricing_section = PricingSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pricing_section_params
      params.require(:pricing_section).permit(:section_id, :description)
    end
end
