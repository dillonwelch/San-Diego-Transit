require 'spec_helper'

FactoryGirl.factories.map(&:name).each do |factory_name|
  describe "{#factory_name} factory" do
    it "is a valid factory" do
      expect(build(factory_name)).to be_valid
    end
  end
end
