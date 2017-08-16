class Question < ApplicationRecord
	belongs_to :student
	has_many :comments
	  acts_as_votable
end
