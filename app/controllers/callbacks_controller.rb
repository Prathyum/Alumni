class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @student = Student.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @student
  end
end