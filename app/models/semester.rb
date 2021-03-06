class Semester < ApplicationRecord
  enum status: { "-": false, "active": true }

  has_many :clubs
  has_many :members, through: :clubs
  has_many :activities, through: :clubs

  validates :session, presence: true
  validates :year, presence: true
end
