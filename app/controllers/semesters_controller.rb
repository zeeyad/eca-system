class SemestersController < ApplicationController

  def index
  	@semesters = Semester.all
  end

  def new
  	@semester = Semester.new
  end

  def create
  	@semester = Semester.new(semester_params)
  	if @semester.save(semester_params)
  		redirect_to semesters_path
  	else
  		render :new
  	end
  end

  def edit
    @semester = Semester.find(params[:id])
  end

  def show
    @semester = Semester.find(params[:id])
    @clubs = @semester.clubs
  end

  private

  def semester_params
    params
      .require(:semester)
      .permit(
      	:session, 
      	:year, 
      	:status
       )
  end

end
