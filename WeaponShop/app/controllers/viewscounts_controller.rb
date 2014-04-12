class ViewscountsController < ApplicationController
  before_action :set_viewscount, only: [:show, :edit, :update, :destroy]

  # GET /viewscounts
  # GET /viewscounts.json
  def index
    @viewscounts = Viewscount.all
  end

  # GET /viewscounts/1
  # GET /viewscounts/1.json
  def show
  end

  # GET /viewscounts/new
  def new
    @viewscount = Viewscount.new
  end

  # GET /viewscounts/1/edit
  def edit
  end

  # POST /viewscounts
  # POST /viewscounts.json
  def create
    @viewscount = Viewscount.new(viewscount_params)

    respond_to do |format|
      if @viewscount.save
        format.html { redirect_to @viewscount, notice: 'Viewscount was successfully created.' }
        format.json { render action: 'show', status: :created, location: @viewscount }
      else
        format.html { render action: 'new' }
        format.json { render json: @viewscount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewscounts/1
  # PATCH/PUT /viewscounts/1.json
  def update
    respond_to do |format|
      if @viewscount.update(viewscount_params)
        format.html { redirect_to @viewscount, notice: 'Viewscount was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @viewscount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewscounts/1
  # DELETE /viewscounts/1.json
  def destroy
    @viewscount.destroy
    respond_to do |format|
      format.html { redirect_to viewscounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewscount
      @viewscount = Viewscount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewscount_params
      params.require(:viewscount).permit(:bow_id, :crossbow_id, :count)
    end
end
