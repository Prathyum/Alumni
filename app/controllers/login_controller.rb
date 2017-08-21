class LoginController < ApplicationController
	def auth
		@u = Student.all
		res=request.original_url
		if res.include? "student"

			params.each do |k,v|
				@us=params[:student].downcase
				@pw=params[:pass]
				# @student = student.where(studentname: )
			end
			response = HTTParty.post("https://portal.stjosephstechnology.ac.in/Authenticate?user=#{@us}&pass=#{@pw}")
			if response.include? "student"
				@student = Student.find_by_stuname(params[:student])
				if @student.nil?
					@student=Student.new(:stuname => @us, :password => @pw, :password_confirmation=> @pw)
					# @student.id=student.id
					@student.save

					# after_sign_up_path_for(@student)
					sign_in(@student)
					sign_in @student, :bypass => true 
					redirect_to staticpage_index_path
					# after_sign_in_path_for(@student)
				else
					sign_in(@student)
					sign_in @student, :bypass => true 
					redirect_to staticpage_index_path
					# after_sign_in_path_for(@student)
				end
			else 
				render html: "<strong>Authentication Failed</strong>".html_safe
			end
		else
			redirect_to staticpage_index_path
		end


	# end
end
end
