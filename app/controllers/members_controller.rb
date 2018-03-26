class MembersController < ApplicationController

  def destroy
  	@member = Member.find(params[:member_id])
    @member.destroy
    flash[:danger] = "Member was successfully destroyed"
    redirect_to members_club_path(params[:id])
  end

end
