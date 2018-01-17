class Attendance < ApplicationRecord
  belongs_to :activity
  belongs_to :student

  has_many :members, through: :student
end
