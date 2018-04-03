class SemestersController < ApplicationController

  def index
  	@semesters = Semester.all.order(year: :desc)
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

  def update
    @semester = Semester.find(params[:id])
    if @semester.update(semester_params)
      flash[:success] = "#{@semester.name} was successfully updated."
      redirect_to semesters_path
    else
      render :new
    end
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
