class Member < ApplicationRecord
  belongs_to :student
  belongs_to :club

  has_many :attendances
end