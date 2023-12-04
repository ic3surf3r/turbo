class AttendancesController < ApplicationController

  def update
    @attendance = Attendance.find(params[:id])
    @event = @attendance.event
    if @attendance.update!(attendance_params)
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
