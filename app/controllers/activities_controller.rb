class ActivitiesController < ApplicationController

  def index
    @club = Club.find(params[:id])
    @club_activities = club_activities
    @physical_health_safety = club_activities.physical

    @cultural = club_activities.cultural
    @spiritual = club_activities.spiritual
    @social_community = club_activities.social_community
    @mental_psychological = club_activities.mental_psychological

    @total_hours = @club.total_hours
    @total_points = @total_hours * 10
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
    @activity = Activity.find(params[:activity_id])
    @club = Club.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:club_id, :name)
  end

  def club_activities
    @club.activities
  end

end
