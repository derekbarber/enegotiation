# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :participant do
    name "MyString"
    content "MyString"
    image "MyString"
    enabled false
  end
end
