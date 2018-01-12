require 'rails_helper'

RSpec.describe Member, type: :model do

  before do
    @user = FactoryBot.create(:user)
  	@student = FactoryBot.create(:student, user_id: @user.id)
  	@club = FactoryBot.create(:club, user_id: @user.id)
    @member = FactoryBot.create(:member, student_id: @student.id, club_id: @club.id)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@member).to be_valid
    end

    it 'can not be created without student' do
      @member.student = nil
      expect(@member).to_not be_valid
    end

    it 'can not be created without club' do
      @member.club_id = nil
      expect(@member).to_not be_valid
    end
  end

end
