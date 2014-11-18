class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      # t.belongs_to :schedule
      t.string :name

      t.timestamps
    end
  end
end
