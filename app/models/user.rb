class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:type, :password)
    end
  end


  def user_type(type)
    if type == "SuperUser"
      "Super User"
    elsif type == "SadOffice"
      "Student, Activities & Development Office"
    elsif type == "DataAdmin"
      "Data Admin"
    elsif type == "ScsOffice"
      "Spiritual and Community Service Office"
    elsif type == "CdlnOffice"
      "Counseling and Diverse Learning Needs Office"
    else
      "None"
    end 
  end


end
