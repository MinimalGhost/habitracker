class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :habit
  has_many :events

  # calculate total event hours/minutes for this goal
  def total_time
    total_minutes = 0;
    self.events.each do |event|
      total_minutes += event.minutes
    end
    total_minutes
  end

  def total_hours
    total_minutes = 0;
    self.events.each do |event|
      total_minutes += event.minutes
    end
    "#{total_minutes / 60}"
  end

  # get total event instances
  def total_events
    self.events.count
  end

  # get highest streak (concurrent days) from events
  def longest_streak
    sorted = self.events.sort_by &:date
    result = []
    sorted.each do |event|
      if result.empty? || (event.date - result.last.last.date).to_i != 1
        result << [event]
      else
        result.last << event
      end
    end
      if result == []
        return 0
      else
      result.sort_by {|el| el.length}.last.length
      end
  end

  def completed?

    if self.longest_streak >= self.target_streak && self.total_hours.to_i >= self.target_hours && self.total_events >= self.target_times
      self.complete = true
    else
      self.complete = false
    end
  end
end
