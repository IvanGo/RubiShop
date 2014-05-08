class BowsController < ApplicationController
  before_action :set_bow, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, :only => [:show, :index]

  # GET /bows
  # GET /bows.json
  def index
    @bows = Bow.all
    @types = Bowtype.all
  end

  # GET /bows/1
  # GET /bows/1.json
  def show
    @raiting = get_raiting(@bow.id)
    @linkers = get_linkers(@bow.id)
  end

  # GET /bows/new
  def new
    @bow = Bow.new
  end

  # GET /bows/1/edit
  def edit
  end

  # POST /bows
  # POST /bows.json
  def create
    @bow = Bow.new(bow_params)

    respond_to do |format|
      if @bow.save
        format.html { redirect_to @bow, notice: 'Bow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bow }
      else
        format.html { render action: 'new' }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bows/1
  # PATCH/PUT /bows/1.json
  def update
    respond_to do |format|
      if @bow.update(bow_params)
        format.html { redirect_to @bow, notice: 'Bow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bows/1
  # DELETE /bows/1.json
  def destroy
    @bow.destroy
    respond_to do |format|
      format.html { redirect_to bows_url }
      format.json { head :no_content }
    end
  end

  def increment_viewscount(id)
      el = Viewscount.where(bow_id: id).first

      if el.nil?
        el = Viewscount.create(:bow_id => id, :count => 1)
      else
        el.count += 1
      end

      el.save
  end
  helper_method :increment_viewscount

  def get_viewscount(id)
      el = Viewscount.where(bow_id: id).first

      if el.nil?
        return 0
      else
        return el.count
      end
  end
  helper_method :get_viewscount

  def get_raiting_id(id)
      el = Raiting.where(bow_id: id).first

      if el.nil?
        el = Raiting.create(bow_id: id)
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

    cartcond = LineItem.where(bow_id: cbid)
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
    def set_bow
      @bow = Bow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bow_params
      params.require(:bow).permit(:name, :description, :tension_force, :lenght, :tensionlenght, :arrow_start_speed, :weight, :bow_base, :producer, :bowtype_id, :price, :mainphoto)
    end
end
