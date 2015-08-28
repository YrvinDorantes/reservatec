class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
    # @query = Place.query("2015-08-27 07:00:00", "2015-08-27 08:00:00")
  end

  # GET /places/1
  # GET /places/1.json
  def show
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def reservation
    #byebug
    set_place
    @reserve = Reservation.find_or_initialize_by(startdate: params[:startdate], enddate: params[:enddate], status:0, userapproved: 'pendiente', guest: params[:guest], user: current_user, reservable: @place)

    return destroy_and_redirect if @reserve.persisted?
    save_and_redirect
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name, :description, :capacity, :cost, :goods, :latitude, :longitude, :status, :category_id, :role_id, :dayoff_id, :localization_id, :guest, :startdate, :enddate)
    end

    def destroy_and_redirect
      @reserve.destroy
      redirect_to @reserve, notice: "Tu reservación ha sido anulado"
    end

    def save_and_redirect
        if @reserve.save
        redirect_to root_path, notice: "Tu reservacion fue creada exitosamente"
      elsif
        redirect_to @reserve, notice: @reserve.errors.full_messages.join(", ")
      end
    end
end
