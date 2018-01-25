require 'rails_helper'

describe 'navigate' do

  let!(:club) { create(:club) }
  let!(:activity) { create(:activity, club_id: club.id) }

  describe 'index' do

    before do
      visit members_club_path(club)
    end

    it 'can be reached successfully' do
      expect(page).to have_content(/Club Members/)
    end
  end


  describe 'destroy' do
    xit 'can be deleted by office or club leader' do

    end
  end

end