class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      # t.belongs_to :schedule
      t.string :name

      t.timestamps
    end
  end
end
