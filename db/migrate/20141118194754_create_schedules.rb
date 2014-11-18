class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :route_id
      t.string  :direction
      t.integer :timetable_row
      t.integer :stop_id
      t.string  :stop_time
      t.string  :time_of_week

      t.timestamps
    end
  end
end
