require 'spec_helper'

describe CommentsController do
	it 'should create a new question on POST data' do
		q = Question.create(:body => 'question', :answer => 'answer')
		post 'create', :question_id => q.id, :comment => { :body => 'Comment1' }
		assigns[:comment].valid?.should == true
		assigns[:comment].body.should == 'Comment1'
		Comment.count.should == 1
	end

	it 'should return Comment instance with validation errors explained' do
		q = Question.create(:body => 'question1')
		post 'create', :question_id => q.id, :comment => { :body => 'Comment1'}
		assigns[:comment].valid?.should == false
		assigns[:comment].errors.full_messages.first.should == "Cant comment unanswered question"
	end
end
