class PortfolioCategoriesController < ApplicationController
  before_action :set_portfolio_category, only: %i[ show edit update destroy ]

  # GET /portfolio_categories or /portfolio_categories.json
  def index
    @portfolio_categories = PortfolioCategory.all
  end

  # GET /portfolio_categories/1 or /portfolio_categories/1.json
  def show
  end

  # GET /portfolio_categories/new
  def new
    @portfolio_category = PortfolioCategory.new
  end

  # GET /portfolio_categories/1/edit
  def edit
  end

  # POST /portfolio_categories or /portfolio_categories.json
  def create
    @portfolio_category = PortfolioCategory.new(portfolio_category_params)

    respond_to do |format|
      if @portfolio_category.save
        format.html { redirect_to @portfolio_category, notice: "Portfolio category was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_categories/1 or /portfolio_categories/1.json
  def update
    respond_to do |format|
      if @portfolio_category.update(portfolio_category_params)
        format.html { redirect_to @portfolio_category, notice: "Portfolio category was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_categories/1 or /portfolio_categories/1.json
  def destroy
    @portfolio_category.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_categories_url, notice: "Portfolio category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_category
      @portfolio_category = PortfolioCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_category_params
      params.require(:portfolio_category).permit(:name)
    end
end
