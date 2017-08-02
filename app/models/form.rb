class Form < ApplicationRecord
	validates_presence_of :mobile,:curmail,:current
	belongs_to :students
end
