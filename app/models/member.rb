class Member < ApplicationRecord
  belongs_to :student
  belongs_to :club

  has_many :attendances
  accepts_nested_attributes_for :attendances
  has_many :activities, through: :student



end
