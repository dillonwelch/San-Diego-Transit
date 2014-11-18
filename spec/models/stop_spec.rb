require 'spec_helper'

RSpec.describe Stop do
  it "tests some things" do
    stop = create(:stop)
    expect(stop.name).not_to eq("rawr")
  end
end
