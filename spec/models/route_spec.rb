require 'spec_helper'

RSpec.describe Route do
  it { should validate_presence_of(:name) }

  describe "the MTS id" do
    it_behaves_like("a numeric field greater than 0", :mts_id)
  end

  describe "#crawl_bus_routes" do
    it "does the thing" do
      Route.crawl_bus_routes
    end
  end
end
