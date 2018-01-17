class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :club
  
  has_many :attendances
end
