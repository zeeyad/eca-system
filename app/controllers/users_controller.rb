class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @types = ["Data Admin", "Potato Admin"]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "#{@user.username} has been successfully created"
      redirect_to users_path
    else
      render 'new'
    end   
  end

  def destroy
    @user = User.find(params[:id])
    flash[:danger] = "#{@user.username} have been deleted"
    @user.destroy
    redirect_to users_path

  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :type, :email)
  end

end