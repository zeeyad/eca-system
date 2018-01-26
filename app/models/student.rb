class Student < ApplicationRecord
  has_many :attendances
  has_many :members
  
  validates :student_reg, presence: true
  validates :user_id, presence: true
end
