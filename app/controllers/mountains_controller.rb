class MountainsController < ApplicationController
  def index
    @mountains = Mountain.order(created_at: :desc)
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def new
  end

  def create
    Mountain.create!(name: params[:name], handicap_accessible: params[:handicap_accessible])

    redirect_to "/mountains"
  end
end
