class ActivitiesController < ApplicationController

  def index
    #@activities = Activity.all
    @activities = club.activities
  end

  def new
    @activity = Activity.new
    @clubs = Club.all.collect {|club| [club.name, club.id] }
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = 1
    if @activity.save(activity_params)
      redirect_to activities_path
    else
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:club_id, :name)
  end

end
