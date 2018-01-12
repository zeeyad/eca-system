FactoryBot.define do
  factory :user do
    name 'john'
    email 'john@gmail.com'
    username 'john'
    password '123456'
    password_confirmation '123456'
  end
end
