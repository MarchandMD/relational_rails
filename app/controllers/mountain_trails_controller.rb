class MountainTrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
    if mountain_trails_params.include?(:sort)
      @sorted_trails = @mountain.trails.order(:name)
    elsif mountain_trails_params.include?(:threshold)
      @filtered_trails = @mountain.trails.where("elevation_drop > #{params[:threshold]}")
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

  def destroy
    trail = Trail.find(params[:trail_id])
    trail.destroy

    redirect_to "/mountains/#{params[:mountain_id]}/trails"
  end

  private

  def mountain_trails_params
    params.permit(:name, :trail_open, :elevation_drop, :sort, :threshold)
  end
end