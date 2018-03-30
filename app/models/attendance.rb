class Attendance < ApplicationRecord
  belongs_to :activity
  belongs_to :member
  belongs_to :club

end
