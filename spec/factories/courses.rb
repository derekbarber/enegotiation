# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name "MyString"
    description "MyText"
    image "MyString"
    prerequisite_course_id 1
    system "MyString"
    enabled false
  end
end
