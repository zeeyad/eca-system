class Attendance < ApplicationRecord
  belongs_to :activity, dependent: :destroy
  belongs_to :member
  belongs_to :club

end
