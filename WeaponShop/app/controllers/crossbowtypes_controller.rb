class CrossbowtypesController < ApplicationController
  before_action :set_crossbowtype, only: [:show, :edit, :update, :destroy]

  # GET /crossbowtypes
  # GET /crossbowtypes.json
  def index
    @crossbowtypes = Crossbowtype.all
  end

  # GET /crossbowtypes/1
  # GET /crossbowtypes/1.json
  def show
  end

  # GET /crossbowtypes/new
  def new
    @crossbowtype = Crossbowtype.new
  end

  # GET /crossbowtypes/1/edit
  def edit
  end

  # POST /crossbowtypes
  # POST /crossbowtypes.json
  def create
    @crossbowtype = Crossbowtype.new(crossbowtype_params)

    respond_to do |format|
      if @crossbowtype.save
        format.html { redirect_to @crossbowtype, notice: 'Crossbowtype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crossbowtype }
      else
        format.html { render action: 'new' }
        format.json { render json: @crossbowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crossbowtypes/1
  # PATCH/PUT /crossbowtypes/1.json
  def update
    respond_to do |format|
      if @crossbowtype.update(crossbowtype_params)
        format.html { redirect_to @crossbowtype, notice: 'Crossbowtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crossbowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crossbowtypes/1
  # DELETE /crossbowtypes/1.json
  def destroy
    @crossbowtype.destroy
    respond_to do |format|
      format.html { redirect_to crossbowtypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crossbowtype
      @crossbowtype = Crossbowtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crossbowtype_params
      params.require(:crossbowtype).permit(:name)
    end
end
