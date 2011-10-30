class Question < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	validates_presence_of :body
	validates_presence_of :answer, :on => :update

	# NOT optimized for performance
	# TODO: we should have a bool variable like :closed and an index on it
	default_scope order('id DESC')
	scope :open, where(:answer => nil)
	scope :closed, where('answer IS NOT NULL')
end
