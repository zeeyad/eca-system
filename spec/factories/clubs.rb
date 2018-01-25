FactoryBot.define do
  factory :club do
    name 'Art'
    semester
    user
  end

  factory :activity do
  	name "Activity1"
    user
    club 
  end
end
