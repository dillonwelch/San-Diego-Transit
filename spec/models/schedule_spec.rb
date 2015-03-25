RSpec.describe Schedule do
  %w(schedule_route route schedule_stop stop).each do |field|
    describe "The #{field} field" do
      it_behaves_like 'an association field', field
    end
  end

  it do
    expect(subject).to validate_inclusion_of(:direction).
      in_array(Schedule::DIRECTIONS)
  end

  it do
    expect(subject).to validate_inclusion_of(:time_of_week).
      in_array(Schedule::TIMES_OF_WEEK)
  end

  describe 'DIRECTIONS' do
    it 'contains all direction strings' do
      expect(Schedule::DIRECTIONS).to match_array I18n.t('direction').values
    end
  end

  describe 'TIMES_OF_WEEK' do
    it 'contains all times of week strings' do
      expect(Schedule::TIMES_OF_WEEK).
        to match_array I18n.t('time_of_week').values
    end
  end

  describe 'the timetable row' do
    it_behaves_like 'a numeric field greater than 0', :timetable_row
  end

  describe 'the stop time' do
    it do
      expect(subject).
        to allow_value('08:00', '11:59','15:34', '23:18', '00:00').
        for(:stop_time)
    end

    it do
      expect(subject).
        not_to allow_value(nil, '', 1234, '29:12', '31:49', '19:72', '08:99').
        for(:stop_time)
    end
  end
end
