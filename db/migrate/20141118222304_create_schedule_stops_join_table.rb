class CreateScheduleStopsJoinTable < ActiveRecord::Migration
  def change
    create_table :schedule_stops do |t|
      t.integer :schedule_id
      t.integer :stop_id

      t.timestamps
    end
  end
end
