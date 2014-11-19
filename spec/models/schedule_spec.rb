require 'spec_helper'

RSpec.describe Schedule, :type => :model do
  describe "validating the direction" do
    it "validates the presence" do
      expect(build(:schedule, direction: nil)).to be_invalid
    end

    it "is invalid with a random string" do
      expect(build(:schedule, direction: 'My Direction')).to be_invalid
    end

    it "is invalid with a number" do
      expect(build(:schedule, direction: 123)).to be_invalid
    end
  end

  it "validates the other stuff" do

  end
end
