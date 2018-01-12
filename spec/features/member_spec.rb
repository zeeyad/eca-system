require 'rails_helper'


describe 'navigate' do

  before do
  	@semester = FactoryBot.create(:semester)
  	@user = FactoryBot.create(:user)
    @club = FactoryBot.create(:club, semester_id: @semester.id, user_id: @user.id)
  end

  describe 'index' do
    it 'can be reached successfully' do
      visit members_club_path(@club)
      expect(page).to have_content(/Club Members/)
    end
  end
end