require 'rails_helper'

RSpec.describe Club, type: :model do

  before do
  	@semester = FactoryBot.create(:semester)
  	@user = FactoryBot.create(:user)
    @club = FactoryBot.create(:club, semester_id: @semester.id, user_id: @user.id)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@club).to be_valid
    end

    it 'can not be created without a semester' do
      @club.semester_id = nil
      expect(@club).to_not be_valid
    end

    it 'can not be created without a user' do
      @club.user_id = nil
      expect(@club).to_not be_valid
    end

    it 'can not be created without a name' do
      @club.name = nil
      expect(@club).to_not be_valid
    end

    it 'can not be created without a about' do
      @club.about = nil
      expect(@club).to_not be_valid
    end    

    it 'can not be created without a objective' do
      @club.objective = nil
      expect(@club).to_not be_valid
    end    

    it 'can not be created without a member benefit' do
      @club.member_benefit = nil
      expect(@club).to_not be_valid
    end    

    it 'can not be created without a community benefit' do
      @club.community_benefit = nil
      expect(@club).to_not be_valid
    end    

    it 'can not have weightage less than 100%' do
      @club.phs_weightage = 0
      expect(@club).to_not be_valid
    end

    it 'can not have weightage more than 100%' do
      @club.phs_weightage = 1000
      expect(@club).to_not be_valid
    end

    it 'can not have hours more than 30' do
      @club.phs_hours = 1000
      expect(@club).to_not be_valid
    end


  end

end
