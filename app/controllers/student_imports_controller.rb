class StudentImportsController < ApplicationController

  def index
    @student_import = StudentImport.new
  end

  def create
    @student_import = StudentImport.new(params[:student_import])
    if @student_import.save
      flash[:success] = "Imported Students successfully."
      redirect_to students_path

    else
      flash[:danger] = "Error Detected in Spreadsheet."
      render :index
    end
  end
end
