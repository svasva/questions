class Question < ActiveRecord::Base
	has_many :comments
	validates_presence_of :body

	scope :open, where(:answer => nil)
	scope :closed, where('answer IS NOT NULL')
end
