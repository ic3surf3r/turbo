# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def new
    @club = Club.find(params[:club_id]) if Club.exists?(params[:club_id])
    super
  end

  def create
    if params[:user][:club_id]
      @club = Club.find(params[:user][:club_id])
      ClubMember.create(user: current_user, club: @club) if params[:user][:invite_token] == @club.invite_token
      super
    else
      super
    end
  end
end
