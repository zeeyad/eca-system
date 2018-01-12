require 'rails_helper'

RSpec.describe Semester, type: :model do

  before do
    @semester = FactoryBot.create(:semester)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@semester).to be_valid
    end

    it 'can not be created without a session' do
      @semester.session = nil
      expect(@semester).to_not be_valid
    end

    it 'can not be created without a year' do
      @semester.year = nil
      expect(@semester).to_not be_valid
    end

    xit 'can not have more than one true status' do

    end
  end

end
