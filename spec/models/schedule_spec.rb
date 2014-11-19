require 'spec_helper'

RSpec.describe Schedule do
  ['schedule_route', 'route', 'schedule_stop', 'stop'].each do |field|
    describe "The #{field} field" do
      it_behaves_like("an association field", field)
    end
  end

  describe "DIRECTIONS" do
    it "contains all direction strings" do
      expect(Schedule::DIRECTIONS).to eq(I18n.t('direction').values)
    end
  end

  describe "TIMES_OF_WEEK" do
    it "contains all times of week strings" do
      expect(Schedule::TIMES_OF_WEEK).to eq(I18n.t('time_of_week').values)
    end
  end

  it { should validate_inclusion_of(:direction).in_array(Schedule::DIRECTIONS) }

  describe "the timetable row" do
    it_behaves_like("a numeric field greater than 0", :timetable_row)
  end

  describe "the stop time" do
    it { should allow_value("08:00", "11:59", "15:34", "23:18", "00:00").for(:stop_time) }

    it { should_not allow_value(nil, "", 1234, "29:12", "31:49", "19:72", "08:99").for(:stop_time) }
  end

  it { should validate_inclusion_of(:time_of_week).in_array(Schedule::TIMES_OF_WEEK) }
end
