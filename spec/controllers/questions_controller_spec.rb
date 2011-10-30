require 'spec_helper'

describe QuestionsController do
	it 'should show open questions' do
		get :index
		assigns[:open_questions].count.should == Question.open.count
		assigns[:closed_questions].count.should == Question.closed.count
	end

	it 'should create a new question on POST data' do
		post 'create', :question => { :body => 'Question1' }
		assigns[:question].valid?(:create).should == true
		assigns[:question].body.should == 'Question1'
		Question.count.should == 1
	end

	it 'should return Question instance with validation errors explained' do
		post 'create'
		assigns[:question].valid?(:create).should == false
		assigns[:question].errors.full_messages.first.should == "Body can't be blank"
	end

	it 'should update attributes on PUT update' do
		q = Question.create(:body => 'testing')
		put 'update', :id => q.id, :question => { :answer => 'success' }
		q.reload.answer.should == 'success'
	end
end
