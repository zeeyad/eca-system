class Student < ApplicationRecord
  validates :student_reg, presence: true
  validates :user_id, presence: true
end
