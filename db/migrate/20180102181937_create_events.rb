class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :goal_id
      t.time :start_time
      t.time :end_time
      t.date :date
      
      t.timestamps
    end
  end
end
