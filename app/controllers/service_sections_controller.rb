class ServiceSectionsController < ApplicationController
  before_action :set_service_section, only: %i[ show edit update destroy ]

  # GET /service_sections or /service_sections.json
  def index
    @service_sections = ServiceSection.all
  end

  # GET /service_sections/1 or /service_sections/1.json
  def show
  end

  # GET /service_sections/new
  def new
    @service_section = ServiceSection.new
  end

  # GET /service_sections/1/edit
  def edit
  end

  # POST /service_sections or /service_sections.json
  def create
    @service_section = ServiceSection.new(service_section_params)

    respond_to do |format|
      if @service_section.save
        format.html { redirect_to @service_section, notice: "Service section was successfully created." }
        format.json { render :show, status: :created, location: @service_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_sections/1 or /service_sections/1.json
  def update
    respond_to do |format|
      if @service_section.update(service_section_params)
        format.html { redirect_to @service_section, notice: "Service section was successfully updated." }
        format.json { render :show, status: :ok, location: @service_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_sections/1 or /service_sections/1.json
  def destroy
    @service_section.destroy
    respond_to do |format|
      format.html { redirect_to service_sections_url, notice: "Service section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_section
      @service_section = ServiceSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_section_params
      params.require(:service_section).permit(:section_id, :description)
    end
end
