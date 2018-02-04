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

    it 'can not be created without a name' do
      @club.name = nil
      expect(@club).to_not be_valid
    end

    it 'can not be created without a semester' do
      @club.semester_id = nil
      expect(@club).to_not be_valid
    end

    it 'can not be created without a user' do
      @club.user_id = nil
      expect(@club).to_not be_valid
    end

  end

end
