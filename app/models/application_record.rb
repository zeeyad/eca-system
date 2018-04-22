class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :physical, -> { where(dev_aspect: 0).map(&:weightage).sum }
  scope :cultural, -> { where(dev_aspect: 1).map(&:weightage).sum }
  scope :spiritual, -> { where(dev_aspect: 2).map(&:weightage).sum }
  scope :social_community, -> { where(dev_aspect: 3).map(&:weightage).sum }
  scope :mental_psychological, -> { where(dev_aspect: 4).map(&:weightage).sum }


  def attendance_rate(activity)
    (activity.attendances.where(status: true).count.to_f / activity.attendances.count.to_f * 100).round(1) if activity.attendances.count != 0
  end

  def average_attendance(activities)
    (activities.map{|activity| attendance_rate(activity).to_f if ( !activity.status.empty? || !activity.status.nil? )  }.sum / activities.completed.count if !activities.empty?).round(1)
  end

end
