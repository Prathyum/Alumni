class StaticpageController < ApplicationController
	before_action :authenticate_student!
  def index
  	@form = Form.find_by(student_id: current_student.id)
  	if @form.nil?
  		redirect_to authenticated_root_path
  	else
  		
  	end

  end
end
