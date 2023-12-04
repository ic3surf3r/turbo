class AttendancesController < ApplicationController

  def create
    @team_member = TeamMember.find_by(user: current_user)
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(attendance_params)
    @attendance.team_member = @team_member
    @attendance.event = @event
    if @attendance.save!
      redirect_to event_path(@event)
    else
      render new, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:team_member_id, :event_id, :absence, :comment)
  end
end
