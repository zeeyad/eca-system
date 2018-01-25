FactoryBot.define do
  factory :user do
    sequence :username do |n|
      "foobar#{n}"
    end
    sequence :email do |n|
      "foo#{n}@bar.com"
    end
    name 'Jackie'
    password '123456'
    password_confirmation '123456'
  end
end
