class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true

  has_many :goals
  has_many :habits, through: :goals
  has_many :events, through: :goals
end
