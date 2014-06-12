class EventNamesController < ApplicationController
  before_action :set_event_name, only: [:show, :edit, :update, :destroy]

  # GET /event_names
  # GET /event_names.json
  def index
    @event_names = EventName.all
  end

  # GET /event_names/1
  # GET /event_names/1.json
  def show
  end

  # GET /event_names/new
  def new
    @event_name = EventName.new
  end

  # GET /event_names/1/edit
  def edit
  end

  # POST /event_names
  # POST /event_names.json
  def create
    @event_name = EventName.new(event_name_params)

    respond_to do |format|
      if @event_name.save
        format.html { redirect_to @event_name, notice: 'Event name was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_name }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_names/1
  # PATCH/PUT /event_names/1.json
  def update
    respond_to do |format|
      if @event_name.update(event_name_params)
        format.html { redirect_to @event_name, notice: 'Event name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_names/1
  # DELETE /event_names/1.json
  def destroy
    @event_name.destroy
    respond_to do |format|
      format.html { redirect_to event_names_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_name
      @event_name = EventName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_name_params
      params.require(:event_name).permit(:name)
    end
end
