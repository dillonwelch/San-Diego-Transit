RSpec.shared_examples "a numeric field greater than 0" do |field|
  it { should validate_numericality_of(field).only_integer.is_greater_than(0) }
end

RSpec.shared_examples "an association field" do |field|
  it { should have_one(field) }
  it { should validate_presence_of(field) }
end

RSpec.shared_examples "a belongs_to field" do |field|
  it { should belong_to(field) }
  it { should validate_presence_of(field) }
end
