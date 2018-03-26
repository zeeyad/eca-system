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
  end

  private

  def student_params
    params.require(:student).permit(:name, :student_reg, :user_id)
  end

end
