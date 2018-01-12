require 'rails_helper'


describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      visit semesters_path
      expect(page).to have_content(/Semester/) 
    end
  end

  describe 'new' do
    it 'can be reached successfully' do
      visit new_semester_path
      expect(page).to have_content(/New Semester/)
    end
  end 
end