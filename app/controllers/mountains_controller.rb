class MountainsController < ApplicationController
  def index
    @mountains = Mountain.order(created_at: :desc)
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def new; end

  def create
    Mountain.create!(mountain_params)

    redirect_to '/mountains'
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])
    @mountain.update(mountain_params)

    redirect_to "/mountains/#{@mountain.id}"
  end

  def destroy
    mountain = Mountain.find(params[:id])
    mountain.destroy
    redirect_to '/mountains'
  end

  private

  def mountain_params
    params.permit(:name, :handicap_accessible, :elevation)
  end
end
