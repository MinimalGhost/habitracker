class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  has_many :goals
  has_many :habits, through: :goals
  has_many :events, through: :goals

  # number of goals complete

  # number of goals incomplete

  # average goals per week?

  # longest event ever

  # longest streak ever
end
