RSpec.describe Stop do
  it { expect(subject).to have_many :schedule_stops }
  it { expect(subject).to have_many(:schedules).through(:schedule_stops) }
  it { expect(subject).to validate_presence_of(:name) }
end
