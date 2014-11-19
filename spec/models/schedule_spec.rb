require 'spec_helper'

RSpec.describe Schedule do
  ['schedule_route', 'route', 'schedule_stop', 'stop'].each do |field|
    describe "The #{field} field" do
      it_behaves_like("an association field", :schedule, field)
    end
  end

  describe "the direction" do
    it_behaves_like("a numeric field greater than 0", :schedule, :direction)

    Schedule::DIRECTIONS.each do |direction|
      it "is valid with the #{direction} direction" do
        expect(build(:schedule, direction: direction)).to be_valid
      end
    end
  end

  describe "the timetable row" do
    it_behaves_like("a numeric field greater than 0", :schedule, :timetable_row)
  end

  describe "the stop time" do
    pending "Waiting on validation"
  end

  describe "the time of week" do
    it "validates the presence" do
      expect(build(:schedule, time_of_week: nil)).to be_invalid
    end

    it "is invalid with a random string" do
      expect(build(:schedule, time_of_week: '123')).to be_invalid
    end

    Schedule::TIMES_OF_WEEK.each do |time|
      it "is valid with #{time}" do
        expect(build(:schedule, time_of_week: time)).to be_valid
      end
    end
  end
end
