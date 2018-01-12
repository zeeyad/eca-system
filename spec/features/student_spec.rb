require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached succesfully' do
      visit students_path
      expect(page).to have_content(/Students/)
    end
  end
end