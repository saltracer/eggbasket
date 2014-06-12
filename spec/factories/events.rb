# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    occurred_on "2014-06-12"
    egg_basket nil
    cost 1.5
    event_name nil
  end
end
