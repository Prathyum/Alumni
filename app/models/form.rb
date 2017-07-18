class Form < ApplicationRecord
	validates_presence_of :mobile,:curmail,:address
	belongs_to :students
end
