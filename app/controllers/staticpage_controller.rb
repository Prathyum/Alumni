class StaticpageController < ApplicationController
	before_action :authenticate_student!
  def index
  	@form = Form.find_by(id: current_student.id)
  	if @form.nil?
  		redirect_to new_student_form_path
  	else

  	end

  end
end
