class ApplicationController < ActionController::Base
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :get_semester

  def get_semester
    @semester = Semester.where(status: true).first
  end

end
