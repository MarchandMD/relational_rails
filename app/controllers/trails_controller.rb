class TrailsController < ApplicationController
  def index
    if trail_params.include?(:search) && params[:search] != ""
      @trails = Trail.where("name like ?", "%#{ params[:search]}%")
    else
      @trails = Trail.where("trail_open = true")
    end
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def edit
    @trail = Trail.find(params[:id])
  end

  def update
    @trail = Trail.find(params[:id])
    @trail.update(trail_params)
    redirect_to "/trails/#{@trail.id}"
  end

  def destroy
    trail = Trail.find(params[:id])
    trail.destroy
    redirect_to "/trails"
  end
  private

  def trail_params
    params.permit(:name, :trail_open, :elevation_drop, :search)
  end
end