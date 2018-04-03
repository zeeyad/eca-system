class StaticController < ApplicationController

  def homepage
  	@semesters = Semester.all.order(year: :desc)
  end

end