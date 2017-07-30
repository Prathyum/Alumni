class Form < ApplicationRecord
	validates_presence_of :mobile,:curmail,:address,:current
	belongs_to :students
end
