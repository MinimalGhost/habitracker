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
      result.sort_by {|el| el.length}.last.length
  end
end
