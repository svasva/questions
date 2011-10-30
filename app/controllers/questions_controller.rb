class QuestionsController < ApplicationController
	def index
		# NOT optimized for performance
		# TODO: add pagination, etc
		
		@open_questions = Question.open.all
		@closed_questions = Question.closed.all
	end
end
