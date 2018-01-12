require 'rails_helper'

describe 'navigate' do

  before do
    @semester = FactoryBot.create(:semester)
  end

  describe 'index' do
    it 'can be reached succesfully' do
      visit students_path
      expect(page).to have_content(/Students/)
    end
  end
end