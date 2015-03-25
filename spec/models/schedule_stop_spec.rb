RSpec.describe ScheduleStop do
  %w(schedule stop).each do |field|
    describe "The #{field} field" do
      it_behaves_like 'a belongs_to field', field
    end
  end
end
