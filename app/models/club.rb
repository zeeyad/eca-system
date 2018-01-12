class Club < ApplicationRecord
  belongs_to :semester
  belongs_to :user

  validates :name, presence: true
end
