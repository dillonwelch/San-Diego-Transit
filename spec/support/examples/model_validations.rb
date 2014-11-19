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

RSpec.shared_examples "an association field" do |model, field|
  it "is invalid when nil" do
    expect(build_stubbed(model, field.to_sym => nil)).to be_invalid
  end

  it "is not nil" do
    expect(build_stubbed(model).send(field)).not_to eq(nil)
  end
end
