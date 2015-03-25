RSpec.describe Route do
  it { expect(subject).to have_many :schedule_routes }
  it { expect(subject).to have_many(:schedules).through(:schedule_routes) }
  it { expect(subject).to validate_presence_of :name }

  [:mts_id, :mts_display_id].each do |id|
    it { expect(subject).to allow_value(123, '123A', '123/456').for(id) }
    it do
      expect(subject).not_to allow_value(nil, 'klajdlkfjaij', 'A123').for(id)
    end
  end

  describe '#crawl_bus_routes' do
    it 'does the thing' do
      Route.crawl_bus_routes
    end
  end
end
