# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @club = Club.find(params[:club_id]) if Club.exists?(params[:club_id])
    super
  end

  def create
    super
    if resource.save && params[:user].key?(:invite_token)
      @club = Club.find(params[:user][:club_id])
      ClubMember.create(user: current_user, club: @club) if params[:user][:invite_token] == @club.invite_token
    end
  end
end
