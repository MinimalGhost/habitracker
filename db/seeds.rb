# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#names
20.times do
  User.create(name: Faker::Name.first_name, password: "password")
end

Habit.create(name: "Jogging")
Habit.create(name: "Guitar Practice")
Habit.create(name: "Ruby")
Habit.create(name: "Painting")
Habit.create(name: "Muay Thai")
Habit.create(name: "Unity 3D")
Habit.create(name: "Cooking")
Habit.create(name: "Drumming")
Habit.create(name: "Social Work")
Habit.create(name: "Gaming")
Habit.create(name: "Javascript")
Habit.create(name: "Rock Climbing")
Habit.create(name: "React")
Habit.create(name: "Snowboarding")
Habit.create(name: "Cycling")
Habit.create(name: "Gym")
Habit.create(name: "Drawing")
Habit.create(name: "Dancing")
Habit.create(name: "Political Activism")
Habit.create(name: "Rails")

20.times do
  Goal.create(user_id: Faker::Number.between(1, 20), habit_id: Faker::Number.between(1, 20), target_hours: Faker::Number.between(1, 15), target_times: Faker::Number.between(1, 5), target_streak: Faker::Number.between(1, 3))
end

20.times do
  Event.create(goal_id: Faker::Number.between(1, 20), start_time: Faker::Time.between(5.days.ago, 5.days.ago, :morning), end_time: Faker::Time.between(5.days.ago, 5.days.ago, :afternoon), date: Faker::Date.between(5.days.ago, 5.days.ago))
end

20.times do
  Event.create(goal_id: Faker::Number.between(1, 20), start_time: Faker::Time.between(4.days.ago, 4.days.ago, :morning), end_time: Faker::Time.between(4.days.ago, 4.days.ago, :afternoon), date: Faker::Date.between(4.days.ago, 4.days.ago))
end

20.times do
  Event.create(goal_id: Faker::Number.between(1, 20), start_time: Faker::Time.between(3.days.ago, 3.days.ago, :morning), end_time: Faker::Time.between(3.days.ago, 3.days.ago, :afternoon), date: Faker::Date.between(3.days.ago, 3.days.ago))
end

20.times do
  Event.create(goal_id: Faker::Number.between(1, 20), start_time: Faker::Time.between(2.days.ago, 2.days.ago, :morning), end_time: Faker::Time.between(2.days.ago, 2.days.ago, :afternoon), date: Faker::Date.between(2.days.ago, 2.days.ago))
end

20.times do
  Event.create(goal_id: Faker::Number.between(1, 20), start_time: Faker::Time.between(1.days.ago, 1.days.ago, :morning), end_time: Faker::Time.between(1.days.ago, 1.days.ago, :afternoon), date: Faker::Date.between(1.days.ago, 1.days.ago))
end
