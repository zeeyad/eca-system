class Semester < ApplicationRecord

  validates :session, presence: true
  validates :year, presence: true
end
