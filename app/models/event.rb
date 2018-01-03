class Event < ApplicationRecord
  belongs_to :goal

  # calculates how much time elapsed based on start/end time
  def minutes
    minutes = 0
    seconds = self.end_time - self.start_time
    while seconds > 60
      minutes += 1
      seconds -= 60
    end
    minutes
  end

  def elapsed_time
    "#{self.minutes / 60}:#{self.minutes % 60}"
  end

  # return the date in the correct format
  

end
