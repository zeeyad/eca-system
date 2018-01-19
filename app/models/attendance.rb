class Attendance < ApplicationRecord
  enum status: { absent: 0, present: 1 }

  belongs_to :activity, dependent: :destroy
  belongs_to :member
end
