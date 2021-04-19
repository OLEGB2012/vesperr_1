class TeamSectionsController < ApplicationController
  before_action :set_team_section, only: %i[ show edit update destroy ]

  # GET /team_sections or /team_sections.json
  def index
    @team_sections = TeamSection.all
  end

  # GET /team_sections/1 or /team_sections/1.json
  def show
  end

  # GET /team_sections/new
  def new
    @team_section = TeamSection.new
  end

  # GET /team_sections/1/edit
  def edit
  end

  # POST /team_sections or /team_sections.json
  def create
    @team_section = TeamSection.new(team_section_params)

    respond_to do |format|
      if @team_section.save
        format.html { redirect_to @team_section, notice: "Team section was successfully created." }
        format.json { render :show, status: :created, location: @team_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_sections/1 or /team_sections/1.json
  def update
    respond_to do |format|
      if @team_section.update(team_section_params)
        format.html { redirect_to @team_section, notice: "Team section was successfully updated." }
        format.json { render :show, status: :ok, location: @team_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_sections/1 or /team_sections/1.json
  def destroy
    @team_section.destroy
    respond_to do |format|
      format.html { redirect_to team_sections_url, notice: "Team section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_section
      @team_section = TeamSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_section_params
      params.require(:team_section).permit(:section_id, :description)
    end
end
