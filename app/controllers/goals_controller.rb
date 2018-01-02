class GoalsController < ApplicationController



  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    ...
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
  end
  
end
