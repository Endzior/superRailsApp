FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Title number #{n}"}
    sequence(:text) { |n| "Text number #{n}"}
  end
end