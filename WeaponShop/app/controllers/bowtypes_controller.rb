class BowtypesController < ApplicationController
  before_action :set_bowtype, only: [:show, :edit, :update, :destroy]

  # GET /bowtypes
  # GET /bowtypes.json
  def index
    @bowtypes = Bowtype.all
  end

  # GET /bowtypes/1
  # GET /bowtypes/1.json
  def show
  end

  # GET /bowtypes/new
  def new
    @bowtype = Bowtype.new
  end

  # GET /bowtypes/1/edit
  def edit
  end

  # POST /bowtypes
  # POST /bowtypes.json
  def create
    @bowtype = Bowtype.new(bowtype_params)

    respond_to do |format|
      if @bowtype.save
        format.html { redirect_to @bowtype, notice: 'Bowtype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bowtype }
      else
        format.html { render action: 'new' }
        format.json { render json: @bowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowtypes/1
  # PATCH/PUT /bowtypes/1.json
  def update
    respond_to do |format|
      if @bowtype.update(bowtype_params)
        format.html { redirect_to @bowtype, notice: 'Bowtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowtypes/1
  # DELETE /bowtypes/1.json
  def destroy
    @bowtype.destroy
    respond_to do |format|
      format.html { redirect_to bowtypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bowtype
      @bowtype = Bowtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bowtype_params
      params.require(:bowtype).permit(:name)
    end
end
