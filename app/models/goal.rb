class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :habit
  has_many :events
end
