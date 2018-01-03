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
    "#{total_minutes / 60}:#{total_minutes % 60}"
  end

  # get total event instances
  def total_events
    self.events.count
  end

  # get highest streak (concurrent days) from events
  def longest_streak
    self.events.date.map do |d|

    end
  end
end
