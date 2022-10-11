class MountainTrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
  end

  def new
    @mountain = Mountain.find(params[:mountain_id])
  end

  def create
    @mountain = Mountain.find(params[:mountain_id])
    @mountain.trails.create!(mountain_trails_params)
  end

  private

  def mountain_trails_params
    params.permit(:name, :trail_open, :elevation_drop)
  end
end