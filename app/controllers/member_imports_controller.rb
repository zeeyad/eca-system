class MemberImportsController < ApplicationController

  def index
    @member_import = MemberImport.new
    @club = Club.all.order(:name)
  end

  def create
    @member_import = MemberImport.new(params[:member_import])
    if @member_import.save
      flash.now[:success] = "Import Members successfully."
      redirect_to clubs_path
    else
      flash.now[:danger] = "Error Detected in the header of the Spreadsheet. Please read the instructions."
      render :index
    end
  end
end
