FactoryBot.define do
  factory :club do
    name 'Art'
    semester
    user
    about 'About the Art World'
    objective 'Objective of the Art World'
    member_benefit 'Art helps the member welfare'
    community_benefit 'Art helps bring the world together'
    usual_day 'Wednesday'
    usual_venue 'MPH'
    phs_activity 'Running'
    phs_hours 6
    phs_weightage 20
    culture_activity 'Brunei Culture'
    culture_hours 6
    culture_weightage 20
    spiritual_activity 'Spirit'
    spiritual_hours 6
    spiritual_weightage 20
    social_activity 'Art Gathering'
    social_hours 6
    social_weightage 20
    mental_activity 'Competition'
    mental_hours 6
    mental_weightage 20
  end

  factory :activity do
  	name "Activity1"
    user
    club
    dev_aspect 1 
  end
end
