class ActivitiesController < ApplicationController

  def index
    @club = Club.find(params[:id])

    @phs_weightage = @club.phs_weightage
    @cult_weightage = @club.culture_weightage
    @sprt_weightage = @club.spiritual_weightage
    @soc_weightage= @club.social_weightage
    @ment_weightage = @club.mental_weightage

    @club_activities = club_activities

    @spiritual = club_activities.spiritual

  end

  def complete
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity.completed!
    flash[:success] = "#{@activity.name.upcase}'s status is changed to COMPLETED."
    redirect_to club_path(@club)
  end

  def plan
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity.planned!
    flash[:success] = "#{@activity.name.upcase}'s status is changed to PLANNED."
    redirect_to club_path(@club)
  end

  def cancel
    @club = Club.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity.cancelled!
    flash[:success] = "#{@activity.name.upcase}'s status is changed to CANCELLED."
    redirect_to club_path(@club)
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
