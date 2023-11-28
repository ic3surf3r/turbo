class TeamsController < ApplicationController
  before_action :set_club, only: [:new, :create]

  def index
    @teams = current_user.teams
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.club = @club
    if @team.save
      @team_member = TeamMember.new
      @team_member.user = current_user
      @team_member.is_coach = true
      @team_member.team = @team
      @team_member.save!
      redirect_to team_path(@team)
    else
      render new, status: :unprocessable_entity
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)

    if @team.save
      redirect_to team_path(@team)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @club = @team.club
    @team.destroy
    redirect_to club_teams_path(@club), status: :see_other
  end


  private

  def set_club
    @club = Club.find(params[:club_id])
  end

  def team_params
    params.require(:team).permit(:name, :sport, :description)
  end
end
