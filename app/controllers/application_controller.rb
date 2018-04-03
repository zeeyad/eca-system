class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :get_semester

  def get_semester
    @semester = Semester.where(status: true).first
  end

end
