class CommentsController < ApplicationController
	respond_to :html, :js

	def create
    @comment = Comment.new(params[:comment])
    @comment.question_id = params[:question_id]
    logger.info @comment.inspect
    @comment.save
    respond_with @comment, :location => questions_url
	end
end
