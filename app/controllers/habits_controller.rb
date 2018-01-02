class HabitsController < ApplicationController
    def show
      @habit = Habit.find(params[:id])
    end

    def new
      @habit = Habit.new
      if @habit.save
        @goal = Goal.new(user_id: @habit.user_id, habit_id: @goal.habit_id)

        redirect_to user_path(@habit.user)
      else
        render :new
      end
    end

    def create
      @habit = Habit.new
    end

end
