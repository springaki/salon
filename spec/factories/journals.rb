# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :journal do
    checkin_at "2016-09-27"
    karte_no 1
    quantity 1
    item nil
  end
end
