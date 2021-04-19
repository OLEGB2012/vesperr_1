class PortfolioSectionsController < ApplicationController
  before_action :set_portfolio_section, only: %i[ show edit update destroy ]

  # GET /portfolio_sections or /portfolio_sections.json
  def index
    @portfolio_sections = PortfolioSection.all
  end

  # GET /portfolio_sections/1 or /portfolio_sections/1.json
  def show
  end

  # GET /portfolio_sections/new
  def new
    @portfolio_section = PortfolioSection.new
  end

  # GET /portfolio_sections/1/edit
  def edit
  end

  # POST /portfolio_sections or /portfolio_sections.json
  def create
    @portfolio_section = PortfolioSection.new(portfolio_section_params)

    respond_to do |format|
      if @portfolio_section.save
        format.html { redirect_to @portfolio_section, notice: "Portfolio section was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_sections/1 or /portfolio_sections/1.json
  def update
    respond_to do |format|
      if @portfolio_section.update(portfolio_section_params)
        format.html { redirect_to @portfolio_section, notice: "Portfolio section was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_sections/1 or /portfolio_sections/1.json
  def destroy
    @portfolio_section.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_sections_url, notice: "Portfolio section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_section
      @portfolio_section = PortfolioSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_section_params
      params.require(:portfolio_section).permit(:section_id, :description)
    end
end
