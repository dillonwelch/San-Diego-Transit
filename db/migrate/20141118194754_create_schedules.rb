class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :route_id
      t.string  :direction
      t.integer :timetable_row
      t.integer :stop_id
      t.datetime :stop_time

      t.timestamps
    end
  end
end
