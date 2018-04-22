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
    @SAD_club = @semester.clubs.SAD
    @SAD_ESR_club = @semester.clubs.ESR
    @EAC_ESR_club = @semester.clubs.EAC
    @ELI_ESR_club = @semester.clubs.ELI
    @SCS_club = @semester.clubs.SCS
    @CDLN_club = @semester.clubs.CDLN
    @total_personnel = []
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
