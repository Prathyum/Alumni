class Question < ApplicationRecord
	belongs_to :student
	has_many :comments
	  paginates_per  10
	  acts_as_votable
	   is_impressionable
end
