class Route < ActiveRecord::Base
  validates :name, presence: true
  validates :mts_id, numericality: { only_integer: true, greater_than: 0 }
end
