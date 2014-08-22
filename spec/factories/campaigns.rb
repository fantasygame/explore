# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do
    name "MyString"
    money 1
    user nil
  end
end
