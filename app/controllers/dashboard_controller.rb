class DashboardController < ApplicationController
	before_action :authenticate_student!
	def dash
		@student = Student.all
		@question=Question.all
	end
	def accept
		@student = Student.find(params[:uid])
		@question= Question.find(params[:id])
		@question.update_attributes(:acc => "true")
		if @question.acc == true
			@question.update_attributes(:rej => "false")
		end
		@question.save
		uname=@student.email
		redirect_to dashboard_dash_path,  :flash => { :success => "Updated"}
	end
	def reject
		@student = Student.find(params[:uid])
		@question= Question.find(params[:id])
		@question.update_attributes(:rej => "true")
		if @question.rej == true
			@question.update_attributes(:acc => "false")
		end
		@question.save
		email=@student.email
		redirect_to dashboard_dash_path,  :flash => { :success => "Updated"}
	end
	
end
