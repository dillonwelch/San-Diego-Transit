RSpec.shared_examples "a numeric field greater than 0" do |model, field|
  it "validates the presence" do
    expect(build_stubbed(model, field => nil)).to be_invalid
  end

  it "is invalid with negative numbers" do
    expect(build_stubbed(model, field => -1)).to be_invalid
  end

  it "is invalid with zero" do
    expect(build_stubbed(model, field => 0)).to be_invalid
  end
end

RSpec.shared_examples "an association field" do |field|
  it { should have_one(field) }
  it { should validate_presence_of(field) }
end

RSpec.shared_examples "a belongs_to field" do |field|
  it { should belong_to(field) }
  it { should validate_presence_of(field) }
end
