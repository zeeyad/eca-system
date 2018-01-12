require 'rails_helper'

describe 'navigate' do

  before do
    @semester = FactoryBot.create(:semester)
  end

  describe 'index' do
    it 'can be reached successfully' do
      visit clubs_path
      expect(page).to have_content(/Clubs/)
    end
  end

  describe 'new' do
    it 'can be reached successfully' do
      visit new_club_path
      expect(page).to have_content(/New Club/)
    end
  end
end