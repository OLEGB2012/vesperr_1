class AboutUsSectionsController < ApplicationController
  before_action :set_about_us_section, only: %i[ show edit update destroy ]

  # GET /about_us_sections or /about_us_sections.json
  def index
    @about_us_sections = AboutUsSection.all
  end

  # GET /about_us_sections/1 or /about_us_sections/1.json
  def show
  end

  # GET /about_us_sections/new
  def new
    @about_us_section = AboutUsSection.new
  end

  # GET /about_us_sections/1/edit
  def edit
  end

  # POST /about_us_sections or /about_us_sections.json
  def create
    @about_us_section = AboutUsSection.new(about_us_section_params)

    respond_to do |format|
      if @about_us_section.save
        format.html { redirect_to @about_us_section, notice: "About us section was successfully created." }
        format.json { render :show, status: :created, location: @about_us_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @about_us_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_us_sections/1 or /about_us_sections/1.json
  def update
    respond_to do |format|
      if @about_us_section.update(about_us_section_params)
        format.html { redirect_to @about_us_section, notice: "About us section was successfully updated." }
        format.json { render :show, status: :ok, location: @about_us_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @about_us_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_us_sections/1 or /about_us_sections/1.json
  def destroy
    @about_us_section.destroy
    respond_to do |format|
      format.html { redirect_to about_us_sections_url, notice: "About us section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_us_section
      @about_us_section = AboutUsSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_us_section_params
      params.require(:about_us_section).permit(:section_id, :left_side, :right_side, :happy_clients_counter, :projects_counter, :years_counter, :awards_counter, :happy_clients_text, :projects_text, :years_text, :awards_text, :happy_clients_class, :projects_class, :years_class, :awards_class)
    end
end
