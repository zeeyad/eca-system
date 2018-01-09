require 'rails_helper'

describe 'navigate' do 
  describe 'homepage' do
    it 'can be reached successfully' do
      visit root_path
      expect(page).to have_content(/Homepage/)
    end
  end
	
end