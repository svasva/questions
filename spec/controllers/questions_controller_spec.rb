require 'spec_helper'

describe QuestionsController do
	it 'should show open questions' do
		get :index
		assigns(:open_questions).count.should == Question.open.count
		assigns(:closed_questions).count.should == Question.closed.count
	end
end
