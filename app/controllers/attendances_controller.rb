class AttendancesController < ApplicationController

  def update
    @absent = params[:rdo] != "yes"
    @attendance = Attendance.find(params[:id])
    @attendance.absence = @absent
    @event = @attendance.event
    if @attendance.update!(attendance_params)
      flash[:notice] = "Attendance updated"
      redirect_to event_path(@event)
    else
      render new
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:team_member_id, :event_id, :comment)
  end
end
