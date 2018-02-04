require 'rails_helper'

describe 'navigate' do

  let!(:club) { create(:club) }
  let!(:activity) { create(:activity, club_id: club.id) }

  before do
    @semester = FactoryBot.create(:semester)
    @user = FactoryBot.create(:user)
  end

  describe 'index' do
    
    before do
      visit clubs_path
    end

    it 'can be reached successfully' do
      expect(page).to have_content(/Clubs/)
    end

    it 'can view its own members' do
      click_link("member_club_#{club.id}")
      expect(page).to have_content(/Club Members/)
    end

    it 'can view its own activities' do
      click_link("activity_club_#{club.id}")
      expect(page).to have_content(/Club Activity Profile/)
    end

  end

  describe 'new' do

    before do
      visit new_club_path
    end

    it 'can create new ' do
      fill_in 'Name', with: 'Hello World'
      fill_in 'About', with: 'About Club'
      fill_in 'Objective', with: 'Objective Club'
      fill_in 'club[member_benefit]', with: 'Member Benefit Club'
      fill_in 'club[community_benefit]', with: 'Community Beneift Club'
      fill_in 'club[usual_day]', with: 'Thursday'
      fill_in 'club[usual_venue]', with: 'MPH'
      fill_in 'club[hours_per_week]', with: 8
      fill_in 'club[phs_activity]', with: 'Club Physical Activity'
      fill_in 'club[phs_hours]', with: 5
      fill_in 'club[phs_weightage]', with: 20
      fill_in 'club[culture_activity]', with: 'Club Culture Activity'
      fill_in 'club[culture_hours]', with: 5
      fill_in 'club[culture_weightage]', with: 20
      fill_in 'club[spiritual_activity]', with: 'Club Spiritual Activity'
      fill_in 'club[spiritual_hours]', with: 5
      fill_in 'club[spiritual_weightage]', with: 20
      fill_in 'club[social_activity]', with: 'Club Social Activity'
      fill_in 'club[social_hours]', with: 5
      fill_in 'club[social_weightage]', with: 20
      fill_in 'club[mental_activity]', with: 'Club Mental Activity'
      fill_in 'club[mental_hours]', with: 5
      fill_in 'club[mental_weightage]', with: 20
      fill_in 'club[semester_id]', with: @semester.id
      fill_in 'club[user_id]', with: @user.id
      expect { click_on "Save" }.to change(Club, :count).by(1)
    end
  end



end