class Student < ApplicationRecord
  has_many :attendances
  has_many :members
  
  validates :student_reg, presence: true, 
				uniqueness: { case_sensitive: false }
  validates :user_id, presence: true
end
