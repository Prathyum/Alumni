class DashboardController < ApplicationController
	def dash
		@student = Student.all
		@question=Question.all
	end
	def accept
		
		@student = Student.find(params[:uid])
		@question=question.find(params[:id])
		@to = @student.mobile_number
		@question.update_attributes(:acc => "true")
		if @question.acc == true
			@question.update_attributes(:rej => "false")
		end
		@question.save
		uname=@student.email
	end
	def reject
		@student = Student.find(params[:uid])
		@question=question.find(params[:id])
		@to = @student.mobile_number
		@question.update_attributes(:rej => "true")
		if @question.rej == true
			@question.update_attributes(:acc => "false")
		end
		@question.save
		email=@student.email
	
end
