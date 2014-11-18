require 'spec_helper'

RSpec.describe Stop do
  it "validates the stop name" do
    expect(build(:stop, name: nil)).to be_invalid
  end
end
