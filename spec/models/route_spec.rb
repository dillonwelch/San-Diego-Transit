require 'spec_helper'

RSpec.describe Route do
  it "validates the route name" do
    expect(build(:route, name: nil)).to be_invalid
  end
end
