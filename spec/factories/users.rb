# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@email.com" }
    password '12345678'

    factory :admin do
      admin true
    end
  end
end
