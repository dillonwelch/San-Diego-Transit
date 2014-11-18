class AddMtsIdToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :mts_id, :integer
  end
end
