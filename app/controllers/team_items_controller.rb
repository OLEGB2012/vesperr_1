class TeamItemsController < ApplicationController
  before_action :set_team_item, only: %i[ show edit update destroy ]

  # GET /team_items or /team_items.json
  def index
    @team_items = TeamItem.all
  end

  # GET /team_items/1 or /team_items/1.json
  def show
  end

  # GET /team_items/new
  def new
    @team_item = TeamItem.new
  end

  # GET /team_items/1/edit
  def edit
  end

  # POST /team_items or /team_items.json
  def create
    @team_item = TeamItem.new(team_item_params)

    respond_to do |format|
      if @team_item.save
        format.html { redirect_to @team_item, notice: "Team item was successfully created." }
        format.json { render :show, status: :created, location: @team_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_items/1 or /team_items/1.json
  def update
    respond_to do |format|
      if @team_item.update(team_item_params)
        format.html { redirect_to @team_item, notice: "Team item was successfully updated." }
        format.json { render :show, status: :ok, location: @team_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_items/1 or /team_items/1.json
  def destroy
    @team_item.destroy
    respond_to do |format|
      format.html { redirect_to team_items_url, notice: "Team item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_item
      @team_item = TeamItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_item_params
      params.require(:team_item).permit(:team_section_id, :position, :name, :occupation, :twitter_url, :facebook_url, :instagram_url, :linkedin_url)
    end
end
