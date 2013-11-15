# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    course_id 1
    title "MyString"
    content "MyText"
    order 1
    enabled false
  end
end
