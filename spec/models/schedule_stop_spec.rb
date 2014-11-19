require 'spec_helper'

RSpec.describe ScheduleStop do
  ['schedule', 'stop'].each do |field|
    describe "The #{field} field" do
      it_behaves_like("a belongs_to field", field)
    end
  end
end
