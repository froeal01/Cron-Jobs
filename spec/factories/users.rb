# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
  	f.email "test@test.com"
  	f.password "test@test.com"
  end
end
