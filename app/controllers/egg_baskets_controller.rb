class EggBasketsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  # before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_egg_basket, only: [:show, :edit, :update, :destroy]

  # GET /egg_baskets
  # GET /egg_baskets.json
  def index
    @egg_baskets = EggBasket.all
  end

  # GET /egg_baskets/1
  # GET /egg_baskets/1.json
  def show
  end

  # GET /egg_baskets/new
  def new
    @egg_basket = EggBasket.new
  end

  # GET /egg_baskets/1/edit
  def edit
  end

  # POST /egg_baskets
  # POST /egg_baskets.json
  def create
    @egg_basket = EggBasket.new(egg_basket_params)
    #@egg_basket.user = current_user

    respond_to do |format|
      if @egg_basket.save
        format.html { redirect_to @egg_basket, notice: 'Egg basket was successfully created.' }
        format.json { render action: 'show', status: :created, location: @egg_basket }
      else
        format.html { render action: 'new' }
        format.json { render json: @egg_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egg_baskets/1
  # PATCH/PUT /egg_baskets/1.json
  def update
    respond_to do |format|
      if @egg_basket.update(egg_basket_params)
        format.html { redirect_to @egg_basket, notice: 'Egg basket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @egg_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egg_baskets/1
  # DELETE /egg_baskets/1.json
  def destroy
    @egg_basket.destroy
    respond_to do |format|
      format.html { redirect_to egg_baskets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_basket
      @egg_basket = EggBasket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_basket_params
      params.require(:egg_basket).permit(:egg_count, :user_id)
    end
end
