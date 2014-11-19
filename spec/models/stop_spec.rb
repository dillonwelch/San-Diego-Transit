require 'spec_helper'

RSpec.describe Stop do
  it { should validate_presence_of(:name) }
end
