FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}"}
    sequence(:last_name) { |n| "Smith#{n}"}
    sequence(:email) { |n| "js#{n}@gaa.com"}
    password 'password'
  end
  
  factory :admin, class: User do
    sequence(:first_name) { |n| "Johnny#{n}"}
    sequence(:last_name) { |n| "Smithy#{n}" }
    sequence(:email) { |n| "johnny#{n}@gaa.com"}
    password 'password'
    admin true
    redactor true
  end
end