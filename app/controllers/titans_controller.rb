class TitansController < ApplicationController
  before_action :set_titan, only: [:show, :update, :destroy]

  # GET /titans
  def index
    @titans = Titan.all

    render json: @titans
  end

  # GET /titans/1
  def show
    render json: @titan
  end

  # POST /titans
  def create
    @titan = Titan.new(titan_params)

    if @titan.save
      render json: @titan, status: :created, location: @titan
    else
      render json: @titan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /titans/:id
  def update
    if @titan.update(titan_params)
      render json: @titan
    else
      render json: @titan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /titans/:id
  def destroy
    @titan.destroy
  end

  private
    # Standard method to find a specific instance of a titan by its id.
    def set_titan
      @titan = Titan.find(params[:id])
    end

    # Strong params. Requires the titan model. Allow attributes white listed here. Only allow a trusted parameter "white list" through.
    def titan_params
      params.require(:titan).permit(:nickname, :tclass, :size, :image_src, :details)
    end
end
