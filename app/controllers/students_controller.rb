class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new

  end

  def create
    @student = Student.new(student_params)
    @student.user_id = 1
    if @student.save(student_params)
      redirect_to students_path
    else
      render :new
    end
  end

  def show
    @total_points = []
    @student = Student.find(params[:id])
    @student_phs = @student.activities.physical
    @student_c = @student.activities.cultural
    @student_s = @student.activities.spiritual
    @student_sc = @student.activities.social_community
    @student_mp = @student.activities.mental_psychological
  end

  private

  def student_params
    params.require(:student).permit(:name, :student_reg, :user_id)
  end

end
