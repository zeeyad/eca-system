class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def attendance_rate(activity)
    if activity.attendances.count != 0
      (activity.attendances.where(status: true).count.to_f / activity.attendances.count.to_f * 100).round
    end
  end

  def average_attendance(activities)
    activities.map{|activity| attendance_rate(activity) unless activity.status == nil }
  end

end
