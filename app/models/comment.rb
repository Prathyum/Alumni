class Comment < ApplicationRecord
	belongs_to :student
	belongs_to :question
	acts_as_votable
end
