class AddMtsDisplayIdToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :mts_display_id, :integer
  end
end
