class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  has_many :goals
  has_many :relationships
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                 foreign_key: "followed_id",
                                 dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :habits, through: :goals
  has_many :events, through: :goals

  # Follows a user.
  def follow(other_user)
    following << other_user
  end

  # Unfollows a user.
  def unfollow(other_user)
    following.delete(other_user)
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  # number of goals complete

  # number of goals incomplete

  # average goals per week?

  # longest event ever

  # longest streak ever

  # total hours logged
  def all_hours_logged
    all_time = 0
    self.goals.each do |goal|
      all_time += goal.total_time
    end
    "#{all_time / 60} hrs, #{all_time % 60} mins"
  end

  def total_sessions_logged
    all_sessions = 0
    self.goals.each do |goal|
    end
  end

  def total_goals_reached
    self.goals.count { |g| g.completed? }
  end
end
