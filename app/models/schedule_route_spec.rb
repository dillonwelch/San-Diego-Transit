require 'spec_helper'

RSpec.describe ScheduleRoute do
  ['schedule', 'route'].each do |field|
    describe "The #{field} field" do
      it_behaves_like("an association field", :schedule_route, field)
    end
  end
end
