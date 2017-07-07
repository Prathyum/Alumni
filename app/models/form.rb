class Form < ApplicationRecord
	validates_presence_of :mobile,:curmail
	belongs_to :students
end
