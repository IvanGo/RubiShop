class RaitingsController < ApplicationController
  before_action :set_raiting, only: [:show, :edit, :update, :destroy]

  # GET /raitings
  # GET /raitings.json
  def index
    @raitings = Raiting.all
  end

  # GET /raitings/1
  # GET /raitings/1.json
  def show
  end

  # GET /raitings/new
  def new
    @raiting = Raiting.new
  end

  # GET /raitings/1/edit
  def edit
  end

  # POST /raitings
  # POST /raitings.json
  def create
    @raiting = Raiting.new(raiting_params)

    respond_to do |format|
      if @raiting.save
        format.html { redirect_to @raiting, notice: 'Raiting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @raiting }
      else
        format.html { render action: 'new' }
        format.json { render json: @raiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raitings/1
  # PATCH/PUT /raitings/1.json
  def update
    respond_to do |format|
      if @raiting.update(raiting_params)
        format.html { redirect_to @raiting, notice: 'Raiting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @raiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raitings/1
  # DELETE /raitings/1.json
  def destroy
    @raiting.destroy
    respond_to do |format|
      format.html { redirect_to raitings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raiting
      @raiting = Raiting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raiting_params
      params.require(:raiting).permit(:bow_id, :crossbow_id, :raiting)
    end
end
