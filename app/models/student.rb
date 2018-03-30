class Student < ApplicationRecord
  has_many :members
  has_many :attendances, through: :members
  has_many :clubs, through: :members
  has_many :activities, through: :clubs
  
  validates :student_reg, presence: true, 
				uniqueness: { case_sensitive: false }
  validates :user_id, presence: true

end
