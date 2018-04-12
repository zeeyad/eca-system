class Attendance < ApplicationRecord
  belongs_to :club
  belongs_to :activity
  belongs_to :member

end
