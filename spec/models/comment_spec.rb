require 'spec_helper'

describe Comment do
	before { @comment = Comment.new( body: "Hello" ) }
  	subject {@comment}

  	it { should respond_to(:body) }

 describe "when Body format is valid" do
 	before { @comment.body = "" }
 	it { should_not be_valid } 	
  end	
end
