class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string  :direction
      t.integer :timetable_row
      t.string  :stop_time
      t.string  :time_of_week

      t.timestamps
    end
  end
end
