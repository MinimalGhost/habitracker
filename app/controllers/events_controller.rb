class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    # @event = Event.new(goal_id: @goal.id start_time: Time.now, end_time: nil, date: Date.today)
    @event = Event.new(event_params)
    if @event.save
      redirect_to edit_event_path(@event)
    else
      redirect_to new_goal_path
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to goal_path(@event.goal_id)
    else
      render :edit
    end
  end

  private
  def event_params
    params.require(:event).permit(:goal_id, :start_time, :end_time, :date)
  end
end
