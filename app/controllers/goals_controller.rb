class GoalsController < ApplicationController

  def new
    @goal = Goal.new
    @habits = Habit.all
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.valid?
      @goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @goal = Goal.find(params[:id])
    @event = Event.new
    @events = @goal.events
  end

  def edit
    @goal = Goal.find(params[:id])
    @habits = Habit.all

  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    redirect_to @goal
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to user_path(current_user)
  end

  private
  def goal_params
    params.require(:goal).permit(:user_id, :habit_id, :target_hours, :target_times, :target_streak)
  end

end
