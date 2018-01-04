class Event < ApplicationRecord
  belongs_to :goal
  validates_presence_of :goal_id, :start_time, :date

  # calculates how much time elapsed based on start/end time
  def minutes
    min = 0

    seconds = self.end_time - self.start_time
    while seconds > 60
      min += 1
      seconds -= 60
    end
    min
  end

  def elapsed_time
    "#{self.minutes / 60}:#{self.minutes % 60}"
  end

  # return the date in the correct format
  def date_formatter
    self.date.strftime("%a %B %d, %Y")
  end

  def completion_formatter
    self.end_time.to_formatted_s(:time)
  end

  def time_since_completion
    phrase = []
    min = 0
    hour = 0
    day = 0
    seconds = Time.now - self.end_time

    while seconds > 60
      min += 1
      seconds -= 60
    end
    while min > 60
      hour += 1
      min -= 60
    end
    while hour > 24
      day += 1
      hour -= 24
    end
    # if day > 0
    #   phrase << "#{day} days"
    # end
    if hour > 0
      phrase << "#{hour} hours"
    end
    if min > 0
      phrase << "#{min} minutes"
    end
    phrase.join(' ')
  end

end
