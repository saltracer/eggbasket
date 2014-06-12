# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :egg_basket do
    egg_count "9.99"
    user nil
  end
end
