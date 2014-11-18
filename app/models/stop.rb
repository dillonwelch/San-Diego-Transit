class Stop < ActiveRecord::Base
  validates :name, presence: true
end
