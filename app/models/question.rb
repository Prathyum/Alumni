class Question < ApplicationRecord
	belongs_to :students
	has_many :comments
end
