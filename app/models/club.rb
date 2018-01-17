class Club < ApplicationRecord
  belongs_to :semester
  belongs_to :user

  has_many :members
  has_many :activities
  has_many :attendances, through: :activities

  validates :name, presence: true
end
