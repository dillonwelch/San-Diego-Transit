require 'spec_helper'

RSpec.describe Schedule, :type => :model do
  it "does stuff" do
    route = create(:route)
    schedule = create(:schedule, route: route)
    schedule2 = create(:schedule, route: route)
    byebug
  end
end
