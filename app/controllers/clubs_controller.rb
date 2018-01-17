class ClubsController < ApplicationController

  def index
    @clubs = Club.all
    
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
    @club.user_id = 1
    if @club.save(club_params)
      redirect_to clubs_path
    else
      render :new
    end
  end

  private

  def club_params
    params
      .require(:club)
      .permit(
      	:name, 
      	:semester_id, 
      	:user_id
       )
  end

end
