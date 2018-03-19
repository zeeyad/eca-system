class Semester < ApplicationRecord
  has_many :clubs
  has_many :members, through: :clubs
  has_many :activities, through: :clubs
  has_many :activity_plans, through: :clubs


  validates :session, presence: true
  validates :year, presence: true
end
