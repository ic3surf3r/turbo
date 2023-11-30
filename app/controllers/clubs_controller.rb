class ClubsController < ApplicationController
  before_action :set_club, only: %i[show]

  def index
    @clubs = current_user.clubs
  end

  def show
    if @club.club_members.find_by(user_id: current_user.id).nil?
      redirect_to clubs_path
    end
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)

    if @club.save
      @club_member = ClubMember.new
      @club_member.user = current_user
      @club_member.is_manager = true
      @club_member.club = @club
      if @club_member.save
        redirect_to club_path(@club)
      else
        @club.destroy
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def cal
    @club = Club.find(params[:club_id])
    @monday = Date.today.beginning_of_week
    @cal = @club.make_cal(@monday)
  end

  private

  def club_params
    params.require(:club).permit(:name, :description, :address)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
