# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do |f|
  	f.status 0
  	f.total 450
  end
end
