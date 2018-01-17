class Student < ApplicationRecord
  has_many :attendances

  validates :student_reg, presence: true
  validates :user_id, presence: true
end
