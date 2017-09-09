class Question < ApplicationRecord
	belongs_to :student
	has_many :comments
	  paginates_per  5
	  acts_as_votable
	   is_impressionable


def self.search(term)
  if term
    where('name LIKE ?', "%#{term}%").order('id DESC')
  else
    order('id DESC') 
  end
end
end
