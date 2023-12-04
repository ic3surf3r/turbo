class LocationsController < ApplicationController
  before_action :set_club, only: [:new, :create]
  def index
    @locations = Location.all
  end

  def new
    redirect_to club_path(@club) unless current_user.manager?(@club)
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.club = @club
    if @location.save
      redirect_to club_locations_path(@location)
    else
      render new, status: :unprocessable_entity
    end
  end

  private

  def set_club
    @club = Club.find(params[:club_id])
  end

  def location_params
    params.require(:location).permit(:name, :description, :address)
  end
end
