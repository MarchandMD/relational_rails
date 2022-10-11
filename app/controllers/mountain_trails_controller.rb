class MountainTrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
    if mountain_trails_params.include?(:sort)
      @sorted_trails = @mountain.trails.order(:name)
    end
  end

  def new
    @mountain = Mountain.find(params[:mountain_id])
  end

  def create
    @mountain = Mountain.find(params[:mountain_id])
    @mountain.trails.create!(mountain_trails_params)

    redirect_to "/mountains/#{@mountain.id}/trails"
  end

  private

  def mountain_trails_params
    params.permit(:name, :trail_open, :elevation_drop, :sort)
  end
end