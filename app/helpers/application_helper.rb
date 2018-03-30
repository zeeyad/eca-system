module ApplicationHelper
  def active?(path)
  	"active" if current_page?(path)
  end

  def active_semester
  	@semester = Semester.where(status: true).first
  end

  def activity_completed_or_cancelled
  	@activity.completed? || @activity.cancelled?
  end

  def activity_cancelled
  	@activity.cancelled?
  end

  def activity_planned
  	@activity.planned?
  end

  def activity_is_planned(activity)
  	activity.planned?
  end

  def activity_is_completed(activity)
  	activity.completed?
  end

  def activity_is_cancelled(activity)
  	activity.cancelled?
  end

  def activity_planned_and_have_attendance(activity)
  	activity.planned? && !activity.attendances.empty?
  end


end
