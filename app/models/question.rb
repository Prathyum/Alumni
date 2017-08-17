class Question < ApplicationRecord
	belongs_to :student
	has_many :comments
	  paginates_per  5
	  acts_as_votable
end
