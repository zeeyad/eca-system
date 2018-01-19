class AttendancesController < ApplicationController
  
  def index
    #@club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @attendances = @activity.attendances.order(:member_id)
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

end
