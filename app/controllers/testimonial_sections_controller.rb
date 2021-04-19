class TestimonialSectionsController < ApplicationController
  before_action :set_testimonial_section, only: %i[ show edit update destroy ]

  # GET /testimonial_sections or /testimonial_sections.json
  def index
    @testimonial_sections = TestimonialSection.all
  end

  # GET /testimonial_sections/1 or /testimonial_sections/1.json
  def show
  end

  # GET /testimonial_sections/new
  def new
    @testimonial_section = TestimonialSection.new
  end

  # GET /testimonial_sections/1/edit
  def edit
  end

  # POST /testimonial_sections or /testimonial_sections.json
  def create
    @testimonial_section = TestimonialSection.new(testimonial_section_params)

    respond_to do |format|
      if @testimonial_section.save
        format.html { redirect_to @testimonial_section, notice: "Testimonial section was successfully created." }
        format.json { render :show, status: :created, location: @testimonial_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testimonial_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonial_sections/1 or /testimonial_sections/1.json
  def update
    respond_to do |format|
      if @testimonial_section.update(testimonial_section_params)
        format.html { redirect_to @testimonial_section, notice: "Testimonial section was successfully updated." }
        format.json { render :show, status: :ok, location: @testimonial_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testimonial_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonial_sections/1 or /testimonial_sections/1.json
  def destroy
    @testimonial_section.destroy
    respond_to do |format|
      format.html { redirect_to testimonial_sections_url, notice: "Testimonial section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial_section
      @testimonial_section = TestimonialSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testimonial_section_params
      params.require(:testimonial_section).permit(:section_id, :description)
    end
end
