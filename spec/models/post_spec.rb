require 'spec_helper'

describe Post do
  before { @post = Post.new( body: "Hello", title: "maw") }
  subject {@post}

  it { should respond_to(:body) }
  it { should respond_to(:title) }

 describe "when Body format is valid" do
 	before { @post.body = "" }
 	it { should_not be_valid }
  end

 describe "when title format is valid" do
 	before { @post.title = "" }
 	it { should_not be_valid }
  end  
end
