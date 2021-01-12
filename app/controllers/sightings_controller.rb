class SightingsController < ApplicationController
  before_action :set_sighting, only: [:show, :update, :destroy]

  # GET /sightings
  def index
    if params[:titan_id]
      @sightings = Titan.find_by_id(params[:titan_id]).sightings
    else
      @sightings = Sighting.all
    end

    render json: @sightings
  end

  # GET /sightings/1
  def show
    render json: { id: @sighting.id, titan: @sighting.titan, location: @sighting.location }
  end

  # POST /sightings
  def create
    @sighting = Sighting.new(sighting_params)

    if @sighting.save
      render json: @sighting, status: :created, location: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sightings/1
  def update
    if @sighting.update(sighting_params)
      render json: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sightings/1
  def destroy
    @sighting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sighting
      @sighting = Sighting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sighting_params
      params.require(:sighting).permit(:location, :sighting_event, :titan_id)
    end
end
