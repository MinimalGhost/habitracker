class HabitsController < ApplicationController

    def show
      @habit = Habit.find(params[:id])
      @user = User.find(current_user.id)
      @goals = @habit.goals
    end

    def new
      @habit = Habit.new
    end

    def create
      @habit = Habit.new(habit_params)
      if @habit.save
        # @goal = Goal.create(user_id: current_user.id, habit_id: @habit.id)
        redirect_to user_path(current_user)
      else
        render :new
      end
    end

    private

    def habit_params
      params.require(:habit).permit(:name)
    end

end
