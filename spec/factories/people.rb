# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    sequence(:karte_no) { |n| n }
    name { "%s %s" % [Faker::Name.first_name, Faker::Name.last_name] }
  end
end
