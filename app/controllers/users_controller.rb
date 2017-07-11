class UsersController < ApplicationController	
def new
    @user=User.new
  end

 def create
  @user = User.new(user_params)
  if @user.save
   # session[:user_id]=user.user_id
   redirect_to '/students/sign_up'
else
	redirect_to '/'  
end
 end

def index
end

def user_params
	params.require(:user).permit(:dob,:rollno)
 end
end