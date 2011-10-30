require 'spec_helper'

describe Question do
  #pending "add some examples to (or delete) #{__FILE__}"
	it 'shouldnt save without a body' do
		q = Question.new
		q.save.should == false
	end

	it 'should distribute to right scopes' do
		q = Question.create(:body => 'Is this a question?')
		Question.open.count.should == 1

		q.update_attributes(:answer => 'Sure it is!')
		Question.open.count.should == 0
		Question.closed.count.should == 1
	end
end
