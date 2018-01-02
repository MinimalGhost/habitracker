# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


john = User.create(name: "john")
andrew = User.create(name: "andrew")
will = User.create(name: "will")
sharon = User.create(name: "sharon")

#habits
jogging = Habit.create(name: "jogging")
guitar = Habit.create(name: "guitar")
coding = Habit.create(name: "coding")
yoga = Habit.create(name: "yoga")

#goals
johnJogging = Goal.create(user_id: 1, habit_id: 1)
andrewYoga = Goal.create(user_id: 2, habit_id: 4)
willGuitar = Goal.create(user_id: 3, habit_id: 2)
sharonCoding = Goal.create(user_id: 4, habit_id: 3)

#events
event01 = Event.create(goal_id: 1)
event02 = Event.create(goal_id: 2)
event03 = Event.create(goal_id: 3)
event04 = Event.create(goal_id: 4)
