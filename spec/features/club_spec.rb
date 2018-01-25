require 'rails_helper'

describe 'navigate' do

  let!(:club) { create(:club) }
  let!(:activity) { create(:activity, club_id: club.id) }

  before do
    @semester = FactoryBot.create(:semester)
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
      expect(page).to have_content(/Showing All Club Activities/)
    end

  end

  describe 'new' do
    it 'can be reached successfully' do
      visit new_club_path
      expect(page).to have_content(/New Club/)
    end
  end



end