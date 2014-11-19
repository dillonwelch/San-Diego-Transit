require 'spec_helper'

RSpec.describe ScheduleStop do
  ['schedule', 'stop'].each do |field|
    describe "The #{field} field" do
      it_behaves_like("an association field", :schedule_stop, field)
    end
  end
end
