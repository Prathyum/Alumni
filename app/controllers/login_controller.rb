class LoginController < ApplicationController
	def auth
		@u = student.all
		res=request.original_url
		if res.include? "student"

			params.each do |k,v|
				@us=params[:student].downcase
				@pw=params[:pass]
				# @student = student.where(studentname: )
			end
			response = HTTParty.post("https://portal.stjosephstechnology.ac.in/Authenticate?user=#{@us}&pass=#{@pw}")
			if response.include? "student"
				@student = student.find_by_studentname(params[:student])
				if @student.nil?
					@student=student.new(:stuname => @us, :password => @pw, :password_confirmation=> @pw)
					# @student.id=student.id
					@student.save

					# after_sign_up_path_for(@student)
					sign_in(@student)
					sign_in @student, :bypass => true 
					redirect_to index_path
					# after_sign_in_path_for(@student)
				else
					sign_in(@student)
					sign_in @student, :bypass => true 
					redirect_to index_path
					# after_sign_in_path_for(@student)
				end
			else 
				render html: "<strong>Authentication Failed</strong>".html_safe
			end
		else
			redirect_to index_path
		end


	# end
end
end
