class TeamMembersController < ApplicationController


  def create
    @team =  Team.find(params[:team_id])
    @team_member = TeamMember.new(new_member_params)
    @team_member.team = @team
    if @team_member.save!
      redirect_to team_path(@team)
    else
      render new, status: :unprocessable_entity
    end
  end

  def destroy
    @team_member = TeamMember.find(params[:id])
    @team = @team_member.team
    @team_member.destroy
    redirect_to team_path(@team), status: :see_other
  end

  private

  def new_member_params
    params.require(:team_member).permit(:user_id)
  end
end
