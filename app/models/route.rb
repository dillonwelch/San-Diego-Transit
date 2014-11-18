class Route < ActiveRecord::Base
  has_many :schedule_routes
  has_many :schedules, through: :schedule_routes

  validates :name, presence: true
  validates :mts_id, numericality: { only_integer: true, greater_than: 0 }
end
