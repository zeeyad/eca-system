class StaticController < ApplicationController

  def homepage
  	@semesters = Semester.all
  end

end