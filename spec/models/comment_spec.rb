require 'spec_helper'

describe Comment do
  #pending "add some examples to (or delete) #{__FILE__}"
	it 'shouldnt save comments to an open question' do
		q = Question.new(:body => "Does cow say 'moo'?")
		q.save
		c = q.comments.new(:body => 'Right answer!')
		c.save.should == false
	end
end
