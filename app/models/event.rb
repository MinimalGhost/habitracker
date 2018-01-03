class Event < ApplicationRecord
  belongs_to :goal

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

end
