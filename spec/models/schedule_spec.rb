require 'spec_helper'

RSpec.describe Schedule, :type => :model do
  describe "validating the direction" do
    it_behaves_like("a numeric field greater than 0", :route, :mts_id)

    Schedule::DIRECTIONS.each do |direction|
      it "is valid with the #{direction} direction" do
        expect(build(:schedule, direction: direction)).to be_valid
      end
    end
  end

  it "validates timetable_row" do

  end
end
