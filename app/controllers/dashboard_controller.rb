class DashboardController < ApplicationController
	def dash
		@student = Student.all
		@question=Question.all
	end


end
