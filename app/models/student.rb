class Student < ApplicationRecord
  has_many :members
  has_many :attendances, through: :members
  
  validates :student_reg, presence: true, 
				uniqueness: { case_sensitive: false }
  validates :user_id, presence: true
end
