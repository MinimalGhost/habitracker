class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :habit_id
      t.integer :target_hours
      t.integer :target_times
      t.integer :target_streak
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
