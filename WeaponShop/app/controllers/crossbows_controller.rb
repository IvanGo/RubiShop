class CrossbowsController < ApplicationController
  before_action :set_crossbow, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, :only => [:show, :index]

  

  # GET /crossbows
  # GET /crossbows.json
  def index
    @crossbows = Crossbow.all
    @specialcrossbows = Crossbow.get_crossbows_with_type(1)
    @types = Crossbowtype.all
  end

  # GET /crossbows/1
  # GET /crossbows/1.json
  def show
    @raiting = get_raiting(@crossbow.id)
    @linkers = get_linkers(@crossbow.id)
  end

  # GET /crossbows/new
  def new
    @crossbow = Crossbow.new
  end

  # GET /crossbows/1/edit
  def edit
  end

  # POST /crossbows
  # POST /crossbows.json
  def create
    @crossbow = Crossbow.new(crossbow_params)

    respond_to do |format|
      if @crossbow.save
        format.html { redirect_to @crossbow, notice: 'Crossbow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crossbow }
      else
        format.html { render action: 'new' }
        format.json { render json: @crossbow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crossbows/1
  # PATCH/PUT /crossbows/1.json
  def update
    respond_to do |format|
      if @crossbow.update(crossbow_params)
        format.html { redirect_to @crossbow, notice: 'Crossbow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crossbow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crossbows/1
  # DELETE /crossbows/1.json
  def destroy
    @crossbow.destroy
    respond_to do |format|
      format.html { redirect_to crossbows_url }
      format.json { head :no_content }
    end
  end

  def increment_viewscount(id)
      el = Viewscount.where(crossbow_id: id).first

      if el.nil?
        el = Viewscount.create(:crossbow_id => id, :count => 1)
      else
        el.count += 1
      end

      el.save
  end
  helper_method :increment_viewscount

  def get_viewscount(id)
      el = Viewscount.where(crossbow_id: id).first

      if el.nil?
        return 0
      else
        return el.count
      end
  end
  helper_method :get_viewscount

  def get_raiting_id(id)
      el = Raiting.where(crossbow_id: id).first

      if el.nil?
        el = Raiting.create(crossbow_id: id)
      end

      return el.id
      
  end
  helper_method :get_raiting_id

  def get_raiting(id)
      el = Raiting.where(crossbow_id: id).first

      if el.nil?
        el = Raiting.create(crossbow_id: id)
      end

      return el
      
  end
  helper_method :get_raiting

  def get_linkers(cbid)
    result = Array.new()

    cartcond = LineItem.where(crossbow_id: cbid)
    if (!(cartcond.nil?) && !(cartcond.empty?))

      cartid = cartcond.last.cart_id
      if (!(cartid.nil?))
        line = LineItem.where(cart_id: cartid)
        

        line.each do |l|
          if(l.crossbow_id.nil?)
            result << Bow.find(l.bow_id)
          else
            result << Crossbow.find(l.crossbow_id)
          end
        end

      end
    end

    return result
  end
  helper_method :get_linkers

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crossbow
      @crossbow = Crossbow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crossbow_params
      params.require(:crossbow).permit(:name, :description, :tension_force, :stroke_bowstring, :shoulders_lenght, :arrow_start_speed, :weight, :dimensions, :bolt_lenght, :producer, :crossbowtype_id, :price, :mainphoto)
    end
end
