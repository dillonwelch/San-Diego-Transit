RSpec.shared_examples "a numeric field greater than 0" do |model, field|
  it "validates the presence" do
    expect(build(model, field => nil)).to be_invalid
  end

  it "is invalid with negative numbers" do
    expect(build(model, field => -1)).to be_invalid
  end

  it "is invalid with zero" do
    expect(build(model, field => 0)).to be_invalid
  end
end
