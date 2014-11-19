require 'spec_helper'

RSpec.describe Route do
  it "validates the route name" do
    expect(build(:route, name: nil)).to be_invalid
  end

  describe "the MTS id" do
    it_behaves_like("a numeric field greater than 0", :route, :mts_id)
  end
end
