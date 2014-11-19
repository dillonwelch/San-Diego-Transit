require 'spec_helper'

RSpec.describe Schedule, :type => :model do
  it "does stuff" do
    # stop = create(:stop)
    # schedule = create(:schedule, stop: stop)
    # schedule2 = create(:schedule, stop: stop)
    schedules = create_list(:schedule, 3)
  end
end
