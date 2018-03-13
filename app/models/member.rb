class Member < ApplicationRecord
  belongs_to :student
  belongs_to :club

  has_many :attendances
  accepts_nested_attributes_for :attendances
end
