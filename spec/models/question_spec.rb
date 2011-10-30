require 'spec_helper'

describe Question do
  #pending "add some examples to (or delete) #{__FILE__}"
	it 'shouldnt save without a body' do
		q = Question.new
		q.save.should == false
	end
end
