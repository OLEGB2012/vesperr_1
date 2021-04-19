class TestimonialItemsController < ApplicationController
  before_action :set_testimonial_item, only: %i[ show edit update destroy ]

  # GET /testimonial_items or /testimonial_items.json
  def index
    @testimonial_items = TestimonialItem.all
  end

  # GET /testimonial_items/1 or /testimonial_items/1.json
  def show
  end

  # GET /testimonial_items/new
  def new
    @testimonial_item = TestimonialItem.new
  end

  # GET /testimonial_items/1/edit
  def edit
  end

  # POST /testimonial_items or /testimonial_items.json
  def create
    @testimonial_item = TestimonialItem.new(testimonial_item_params)

    respond_to do |format|
      if @testimonial_item.save
        format.html { redirect_to @testimonial_item, notice: "Testimonial item was successfully created." }
        format.json { render :show, status: :created, location: @testimonial_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testimonial_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonial_items/1 or /testimonial_items/1.json
  def update
    respond_to do |format|
      if @testimonial_item.update(testimonial_item_params)
        format.html { redirect_to @testimonial_item, notice: "Testimonial item was successfully updated." }
        format.json { render :show, status: :ok, location: @testimonial_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testimonial_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonial_items/1 or /testimonial_items/1.json
  def destroy
    @testimonial_item.destroy
    respond_to do |format|
      format.html { redirect_to testimonial_items_url, notice: "Testimonial item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial_item
      @testimonial_item = TestimonialItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testimonial_item_params
      params.require(:testimonial_item).permit(:testimonial_section_id, :position, :author, :occupation, :content)
    end
end
