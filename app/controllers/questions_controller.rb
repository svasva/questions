class QuestionsController < ApplicationController
	respond_to :html, :js

	def index
		# NOT optimized for performance
		# TODO: add pagination, etc
		
		@open_questions = Question.open.all
		@closed_questions = Question.closed.all
	end

	def show
		redirect_to :action => :index
	end

	def create
    @question = Question.new(params[:question])
    @question.save
    respond_with @question, :location => questions_url
	end

	def update
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])
    respond_with @question, :location => questions_url
	end
end
