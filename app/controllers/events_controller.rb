class EventsController < ApplicationController
  before_action :set_team, only: [:new, :create]
  def index
    @events = current_user.teams.map {|team| team.events}.flatten
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.team = @team
    if @event.save!
      redirect_to team_events_path(@event)
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
    redirect_to team_events_path(@team), status: :see_other
  end

  private

  def set_team
    @team = Team.find(params[:team_id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time)
  end
end