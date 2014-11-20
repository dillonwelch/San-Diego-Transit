class ChangeMtsIdAndMtsDisplayIdOnRoutes < ActiveRecord::Migration
  def change
    change_column :routes, :mts_id, :string
    change_column :routes, :mts_display_id, :string
  end
end
