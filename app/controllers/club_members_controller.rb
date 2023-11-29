class ClubMembersController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    if user_signed_in?
      create
    else
      redirect_to new_user_registration_path(invite_token: params[:invite_token], club_id: params[:club_id])
    end
  end

  def create
    @club = Club.find(params[:club_id])
    ClubMember.create(user: current_user, club: @club)
    redirect_to club_path(@club)
  end
end
