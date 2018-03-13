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
    @attendance = Attendance.find(params[:id])
    @attendance.present!
    redirect_to action: 'index'
  end

  def new
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @attendances = @activity.attendances.order(:member_id)
    @attendance = Attendance.new
    @club.members.count.times { @club.attendances.build }    
  end

  def create
    @attendance = Attendance.new(attendance_params)
    @attendance.user_id = 1
    @attendance.save(attendance_params)
    redirect_to action: 'index'
  end

  private

  def attendance_params
    params.require(:attendance).permit(:club_id, :name)
  end

end
