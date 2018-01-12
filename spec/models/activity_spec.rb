require 'rails_helper'

RSpec.describe Activity, type: :model do

  before do
  	@user = FactoryBot.create(:user)
  	@club = FactoryBot.create(:club, user_id: @user.id)
    @activity = FactoryBot.create(:activity, user_id: @user.id, club_id: @club.id)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@activity).to be_valid
    end

    it 'can not be created without a user' do
      @activity.user_id = nil
      expect(@activity).to_not be_valid
    end

    it 'can not be created without a club' do
      @activity.club_id = nil
      expect(@activity).to_not be_valid
    end
  end

end
