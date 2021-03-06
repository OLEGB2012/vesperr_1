class FaqSectionsController < ApplicationController
  before_action :set_faq_section, only: %i[ show edit update destroy ]

  # GET /faq_sections or /faq_sections.json
  def index
    @faq_sections = FaqSection.all
  end

  # GET /faq_sections/1 or /faq_sections/1.json
  def show
  end

  # GET /faq_sections/new
  def new
    @faq_section = FaqSection.new
  end

  # GET /faq_sections/1/edit
  def edit
  end

  # POST /faq_sections or /faq_sections.json
  def create
    @faq_section = FaqSection.new(faq_section_params)

    respond_to do |format|
      if @faq_section.save
        format.html { redirect_to @faq_section, notice: "Faq section was successfully created." }
        format.json { render :show, status: :created, location: @faq_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faq_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faq_sections/1 or /faq_sections/1.json
  def update
    respond_to do |format|
      if @faq_section.update(faq_section_params)
        format.html { redirect_to @faq_section, notice: "Faq section was successfully updated." }
        format.json { render :show, status: :ok, location: @faq_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faq_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faq_sections/1 or /faq_sections/1.json
  def destroy
    @faq_section.destroy
    respond_to do |format|
      format.html { redirect_to faq_sections_url, notice: "Faq section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq_section
      @faq_section = FaqSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faq_section_params
      params.require(:faq_section).permit(:section_id, :description)
    end
end
