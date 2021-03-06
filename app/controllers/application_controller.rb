class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?
protected
    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:stuname,:regno,:dob,:email,:password,:password_configuration,:remember_me)}
     devise_parameter_sanitizer.permit(:sign_in)  {|u| u.permit(:regno,:email,:password,:remember_me)}
     devise_parameter_sanitizer.permit(:account_update)  {|u| u.permit(:email,:password,:password_configuration,:remember_me)}
    end

     def after_sign_in_path_for(student)

     	 if current_student.adminuser
            dashboard_dash_path
         else
            staticpage_index_path
     end
     end

     def after_sign_up_path_for(student)

     	new_student_form_path
     end

     

end
