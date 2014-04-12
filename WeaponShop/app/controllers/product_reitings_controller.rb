class ProductReitingsController < ApplicationController
  before_action :set_product_reiting, only: [:show, :edit, :update, :destroy]

  # GET /product_reitings
  # GET /product_reitings.json
  def index
    @product_reitings = ProductReiting.all
  end

  # GET /product_reitings/1
  # GET /product_reitings/1.json
  def show
  end

  # GET /product_reitings/new
  def new
    @product_reiting = ProductReiting.new
  end

  # GET /product_reitings/1/edit
  def edit
  end

  # POST /product_reitings
  # POST /product_reitings.json
  def create
    @product_reiting = ProductReiting.new(product_reiting_params)

    respond_to do |format|
      if @product_reiting.save
        format.html { redirect_to @product_reiting, notice: 'Product reiting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_reiting }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_reiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_reitings/1
  # PATCH/PUT /product_reitings/1.json
  def update
    respond_to do |format|
      if @product_reiting.update(product_reiting_params)
        format.html { redirect_to @product_reiting, notice: 'Product reiting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_reiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_reitings/1
  # DELETE /product_reitings/1.json
  def destroy
    @product_reiting.destroy
    respond_to do |format|
      format.html { redirect_to product_reitings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_reiting
      @product_reiting = ProductReiting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_reiting_params
      params.require(:product_reiting).permit(:bow_id, :crossbow_id, :user_id, :raiting)
    end
end
