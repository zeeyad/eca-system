require 'rails_helper'

RSpec.describe Student, type: :model do

  before do
  	@user = FactoryBot.create(:user)
    @student = FactoryBot.create(:student, user_id: @user.id)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@student).to be_valid
    end

    it 'can not be created without a student registration' do
      @student.student_reg = nil
      expect(@student).to_not be_valid
    end

    it 'can not be created without a user' do
      @student.user_id = nil
      expect(@student).to_not be_valid
    end

  end

end
