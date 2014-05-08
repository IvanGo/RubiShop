class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, :only => [:index, :create, :destroy]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @cart = current_cart
    if params[:bow_id]
      bow = Bow.find(params[:bow_id])
    end
    
    if params[:crossbow_id]
      crossbow = Crossbow.find(params[:crossbow_id])
    end
    
    @line_item = @cart.line_items.build(:bow => bow, :crossbow => crossbow)


    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item, notice: 'Line item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /line_items/build_xml
  def build_xml
    @line_items = LineItem.all
    @xml = Builder::XmlMarkup.new
    @xml.instruct! :xml, :version=>"1.0" 
 
    @xml.request{
      @xml.protocolversion(4.00)
      @xml.requet-type(10)
      @line_items.each do |lit|
        @xml.catalog do
          @xml.id(lit.id)
        end
      end
    }
  end

  def get_price(line_id)
    @li = LineItem.find(line_id)

    if @li.crossbow_id.nil?
      @bow = Bow.where(id: @li.bow_id).first
      return @bow.price
    else
      @cbow = Crossbow.where(id: @li.crossbow_id).first
      return @cbow.price
    end
  end
  helper_method :get_price

  def get_product_name(line_id)
    @li = LineItem.find(line_id)

    if @li.crossbow_id.nil?
      @bow = Bow.where(id: @li.bow_id).first
      return @bow.name
    else
      @cbow = Crossbow.where(id: @li.crossbow_id).first
      return @cbow.name
    end
  end
  helper_method :get_product_name

  def get_product_image(line_id)
    @li = LineItem.find(line_id)

    if @li.crossbow_id.nil?
      @bow = Bow.where(id: @li.bow_id).first
      return @bow.mainphoto.url
    else
      @cbow = Crossbow.where(id: @li.crossbow_id).first
      return @cbow.mainphoto.url
    end
  end
  helper_method :get_product_image
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:bow_id, :crossbow_id, :cart_id)
    end
end
