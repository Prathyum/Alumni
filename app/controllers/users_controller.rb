class UsersController < ApplicationController
  # validates_presence_of :rollno, presence: true

def new
    @user=User.new
  end

  def edit
       @user = User.find(params[:id])


  end


 def create
  @user = User.new(user_params)
  if @user.save
   # session[:user_id]=user.user_id
   redirect_to '/students/sign_up'
else
	redirect_to '/'  
end
#@user.student_id= current_student.id

 end

def index
end

def user_params
	params.require(:user).permit(:dob,:rollno)
 end
end