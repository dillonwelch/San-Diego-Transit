require 'spec_helper'

RSpec.describe Route do
  it "validates the route name" do
    expect(build(:route, name: nil)).to be_invalid
  end

  describe "validating the MTS id" do
    it "validates the presence" do
      expect(build(:route, mts_id: nil)).to be_invalid
    end

    it "is invalid with negative numbers" do
      expect(build(:route, mts_id: -1)).to be_invalid
    end

    it "is invalid with zero" do
      expect(build(:route, mts_id: 0)).to be_invalid
    end
  end
end
