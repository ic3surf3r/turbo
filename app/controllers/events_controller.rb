class EventsController < ApplicationController
  before_action :set_team, only: %i[new]
  def index
    @events = current_user.teams.map {|team| team.events}.flatten
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.find_by(event: @event, team_member: TeamMember.find_by(user: current_user, team: @event.team))

    if @event.address
      @marker =
        {
          lat: @event.latitude,
          lng: @event.longitude
        }
    else
      @marker =
        {
          lat: @event.team.club.latitude,
          lng: @event.team.club.longitude
        }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    hours = @event.duration[0].to_i
    minutes = @event.duration[2..3].to_i
    @event.end_time = @event.start_time + (minutes * 60) + (hours * 60 * 60)

    if @event.save!
      @event.team.team_members.each {|member| Attendance.create!(event: @event, team_member: member)}
      redirect_to team_path(@event.team)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
    @team = @event.team
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    @team = @event.team
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @team = @event.team
    @event.destroy
    redirect_to team_path(@team), status: :see_other
  end

  def chat
    @event = Event.find(params[:event_id])
    if @event.chatroom_id
      redirect_to chatroom_path(@event.chatroom_id)
    else
      Chatroom.find_by(name: @event.title) ? @chatroom = Chatroom.find_by(name: @event.title) : @chatroom = Chatroom.create(name: @event.title)
      @event.chatroom_id = @chatroom.id
      redirect_to chatroom_path(@event.chatroom_id)
    end
  end

  private

  def set_team
    @team = Team.find(params[:team_id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :team_id, :duration, :address, :team_member_id)
  end
end
