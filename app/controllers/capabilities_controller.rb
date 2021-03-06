class CapabilitiesController < ApplicationController
  before_action :set_capability, only: %i[ show edit update destroy ]

  # GET /capabilities or /capabilities.json
  def index
    @capabilities = Capability.all
  end

  # GET /capabilities/1 or /capabilities/1.json
  def show
  end

  # GET /capabilities/new
  def new
    @capability = Capability.new
  end

  # GET /capabilities/1/edit
  def edit
  end

  # POST /capabilities or /capabilities.json
  def create
    @capability = Capability.new(capability_params)

    respond_to do |format|
      if @capability.save
        format.html { redirect_to @capability, notice: "Capability was successfully created." }
        format.json { render :show, status: :created, location: @capability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capabilities/1 or /capabilities/1.json
  def update
    respond_to do |format|
      if @capability.update(capability_params)
        format.html { redirect_to @capability, notice: "Capability was successfully updated." }
        format.json { render :show, status: :ok, location: @capability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capabilities/1 or /capabilities/1.json
  def destroy
    @capability.destroy
    respond_to do |format|
      format.html { redirect_to capabilities_url, notice: "Capability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capability
      @capability = Capability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capability_params
      params.require(:capability).permit(:name)
    end
end
