class Question < ActiveRecord::Base
	has_many :comments
	validates_presence_of :body

	# NOT optimized for performance
	# TODO: we should have a bool variable like :closed and an index on it
	scope :open, where(:answer => nil)
	scope :closed, where('answer IS NOT NULL')
end
