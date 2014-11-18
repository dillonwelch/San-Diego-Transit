class Stop < ActiveRecord::Base
  has_many :schedule_stops
  has_many :schedules, through: :schedule_stops

  validates :name, presence: true
end
