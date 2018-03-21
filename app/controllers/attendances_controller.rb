class AttendancesController < ApplicationController
  
  def index
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @attendances = @activity.attendances.order(:member_id)
    10.times { @club.members.build }
  end

  def absent
    @attendance = Attendance.find(params[:id])
    @attendance.absent!
    redirect_to action: 'index'
  end

  def present
    if Attendance.find(params.has_key?(:id))
      @attendance.present!
      redirect_to action: 'index'
    else
      @attendance.user_id = 1
      @attendance = Attendance.new(attendance_params)
    end
  end

  def new
    @club = Club.find(params[:id])
    @club.members.count.times { @club.attendances.build }
    @activity = Activity.find(params[:activity_id])
    # @attendances = @activity.attendances.order(:member_id)
    # @club.members.count.times { @club.attendances.build }    
  end

  def create
    @club = Club.new(club_attendance_params)
    # @attendance.user_id = 1
    if @club.save(club_attendance_params)
      redirect_to clubs_path
    else
      render :new_attendance
    end
    # @attendance = Attendance.new(attendance_params)
    # @attendance.save(attendance_params)
    # redirect_to action: 'index'
  end

  # def create_attendance
  #   @attendance = Attendance.new(attendance_params)
  #   if @attendance.save(attendance_params)
  #     flash.now[:success] = "Attendance successfully."
  #     redirect_to action: 'new'
  #   else
  #     flash.now[:danger] = "Error Detected in Spreadsheet."
  #     redirect_to action: 'new'
  #   end
  # end

  private

  def attendance_params
    params.permit(:activity_id, :name, :member_id)
  end

  def club_attendance_params
     params.require(:club).permit(attendances_attributes: [:id, :club_id, :member_id, :activity_id, :status])
  end

end
