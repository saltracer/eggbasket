# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :egg_clutch do
    count "9.99"
    egg_basket nil
  end
end
