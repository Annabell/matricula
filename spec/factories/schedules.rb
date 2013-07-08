# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule do
    day "MyString"
    time_begin "2013-07-05 00:00:00"
    time_end "2013-07-05 02:00:00"
   classroom
  end
end
