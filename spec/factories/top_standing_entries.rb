# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :top_standing_entry do
    top_standing_id 1
    rank 1
    player "MyString"
    coach "MyString"
    country "MyString"
    comments "MyText"
  end
end
