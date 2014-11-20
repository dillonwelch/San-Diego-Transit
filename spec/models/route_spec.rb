require 'spec_helper'

RSpec.describe Route do
  it { should validate_presence_of(:name) }

  [:mts_id, :mts_display_id].each do |id|
    it { should allow_value(123, '123A', '123/456').for(id) }
    it { should_not allow_value(nil, 'klajdlkfjaij', 'A123').for(id) }
  end

  describe "#crawl_bus_routes" do
    it "does the thing" do
      Route.crawl_bus_routes
    end
  end
end
