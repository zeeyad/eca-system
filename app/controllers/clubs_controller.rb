class ClubsController < ApplicationController

  before_action :set_club, only: [:edit, :update, :destroy]

  def index
    @clubs = Club.all.order(:name)    
  end

  def members
    @club = Club.find(params[:id])
  end
  
  def new
    @club = Club.new
    @semesters = Semester.all
    @sessions = @semesters.map {|semester| [semester.session, semester.id] }
  end

  def create
    @club = Club.new(club_params)
    # @club.user_id = 1
    # @club.semester_id = 1
    if @club.save(club_params)
      redirect_to clubs_path
    else
      render :new
    end
  end

  def show
    @club = Club.find(params[:id])
    @phs_weightage = @club.phs_weightage
    @cult_weightage = @club.culture_weightage
    @sprt_weightage = @club.spiritual_weightage
    @soc_weightage= @club.social_weightage
    @ment_weightage = @club.mental_weightage
  end

  def edit

  end

  def update
    if @club.update(club_params)
      flash[:success] = 'Club was successfully updated.'
      redirect_to clubs_path
    else
      render 'edit'
    end    
  end

  def destroy
    @club.delete
    flash[:danger] = "#{@club.name} was successfully deleted"
    redirect_to clubs_path
  end

  private

  def set_club
    @club = Club.find(params[:id])    
  end

  def club_params
    params
      .require(:club)
      .permit(
      	:name, 
      	:semester_id, 
      	:user_id,
        :about,
        :objective,
        :member_benefit,
        :community_benefit,
        :usual_day,
        :usual_venue,
        :hours_per_week,
        :phs_activity,
        :phs_hours,
        :phs_weightage,
        :culture_activity,
        :culture_hours,
        :culture_weightage,
        :spiritual_activity,
        :spiritual_hours,
        :spiritual_weightage,
        :social_activity,
        :social_hours,
        :social_weightage,
        :mental_activity,
        :mental_hours,
        :mental_weightage
       )
  end

end
