class AttendancesController < ApplicationController
  
  def index
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    #@members = @club.members
  end

  def show
  	@club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
  end

end
