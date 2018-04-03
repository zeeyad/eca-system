class StudentsController < ApplicationController

  def index
    @total_students = Student.all.count
    @students = Student.all.page(params[:page]).per(20)
  end

  def new
    @student = Student.new

  end

  def lookup
    @student = Student.find_by(student_reg: params[:student_reg].to_s.upcase)
    # @student = Student.where("student_reg like ?", params[:student_reg])
    if @student
      @student
    end
    if @student == ""
      @student = "Student not found"
    end    
    if @student.nil?
      @student = "Not found"
    end
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
    @total_hours = []
    @student = Student.find(params[:id])
    @student_phs = @student.activities.physical
    @student_c = @student.activities.cultural
    @student_s = @student.activities.spiritual
    @student_sc = @student.activities.social_community
    @student_mp = @student.activities.mental_psychological
    @phs_aspect = []
    @c_aspect = []
    @s_aspect = []
    @sc_aspect = []
    @mp_aspect = []
  end

  private

  def student_params
    params.require(:student).permit(:name, :student_reg, :user_id)
  end

end
