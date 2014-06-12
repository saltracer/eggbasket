class EggClutchesController < ApplicationController
  before_action :set_egg_clutch, only: [:show, :edit, :update, :destroy]

  # GET /egg_clutches
  # GET /egg_clutches.json
  def index
    @egg_clutches = EggClutch.all
  end

  # GET /egg_clutches/1
  # GET /egg_clutches/1.json
  def show
  end

  # GET /egg_clutches/new
  def new
    @egg_clutch = EggClutch.new
  end

  # GET /egg_clutches/1/edit
  def edit
  end

  # POST /egg_clutches
  # POST /egg_clutches.json
  def create
    @egg_clutch = EggClutch.new(egg_clutch_params)

    respond_to do |format|
      if @egg_clutch.save
        format.html { redirect_to @egg_clutch, notice: 'Egg clutch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @egg_clutch }
      else
        format.html { render action: 'new' }
        format.json { render json: @egg_clutch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egg_clutches/1
  # PATCH/PUT /egg_clutches/1.json
  def update
    respond_to do |format|
      if @egg_clutch.update(egg_clutch_params)
        format.html { redirect_to @egg_clutch, notice: 'Egg clutch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @egg_clutch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egg_clutches/1
  # DELETE /egg_clutches/1.json
  def destroy
    @egg_clutch.destroy
    respond_to do |format|
      format.html { redirect_to egg_clutches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_clutch
      @egg_clutch = EggClutch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_clutch_params
      params.require(:egg_clutch).permit(:count, :egg_basket_id)
    end
end
