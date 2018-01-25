require 'rails_helper'

describe 'navigate' do

  let!(:user) { create(:user) }
  let!(:student) { create(:student, user_id: user.id) }
  let!(:member) { create(:member, student_id: student.id) }
  let!(:club) { create(:club) }
  let!(:activity) { create(:activity, club_id: club.id) }
  let!(:attendance) { create(:attendance, activity_id: activity.id, member_id: member.id ) }

  describe 'club activity' do
    before do
      visit activities_path(club, activity)
    end

    it 'can be reach' do
      expect(page).to have_content(/Showing All Club Activities/)
    end
  end

  describe 'club attendance' do
    before do
      visit activity_attendances_path(club, activity)
    end

    it 'can be reach' do
      expect(page).to have_content(/absent/)
    end

    it 'can be clicked to make attendance present' do
      click_link("present_#{attendance.id}")
      expect(page).to have_content(/present/)
    end

  end


end