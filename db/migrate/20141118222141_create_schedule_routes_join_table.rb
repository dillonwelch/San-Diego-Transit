class CreateScheduleRoutesJoinTable < ActiveRecord::Migration
  def change
    create_table :schedule_routes do |t|
      t.integer :schedule_id
      t.integer :route_id
    end
  end
end
