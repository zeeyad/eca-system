module ApplicationHelper
  def active?(path)
  	"active" if current_page?(path)
  end

  def active_semester
  	@semester = Semester.where(status: true).first
  end
end
