class FaqItemsController < ApplicationController
  before_action :set_faq_item, only: %i[ show edit update destroy ]

  # GET /faq_items or /faq_items.json
  def index
    @faq_items = FaqItem.all
  end

  # GET /faq_items/1 or /faq_items/1.json
  def show
  end

  # GET /faq_items/new
  def new
    @faq_item = FaqItem.new
  end

  # GET /faq_items/1/edit
  def edit
  end

  # POST /faq_items or /faq_items.json
  def create
    @faq_item = FaqItem.new(faq_item_params)

    respond_to do |format|
      if @faq_item.save
        format.html { redirect_to @faq_item, notice: "Faq item was successfully created." }
        format.json { render :show, status: :created, location: @faq_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faq_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faq_items/1 or /faq_items/1.json
  def update
    respond_to do |format|
      if @faq_item.update(faq_item_params)
        format.html { redirect_to @faq_item, notice: "Faq item was successfully updated." }
        format.json { render :show, status: :ok, location: @faq_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faq_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faq_items/1 or /faq_items/1.json
  def destroy
    @faq_item.destroy
    respond_to do |format|
      format.html { redirect_to faq_items_url, notice: "Faq item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq_item
      @faq_item = FaqItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faq_item_params
      params.require(:faq_item).permit(:faq_section_id, :position, :question, :answer)
    end
end
