class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :club
  belongs_to :semester
end
