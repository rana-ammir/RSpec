require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:all) do
  	@post = Post.new(title: "My title", body:"My body")
  end
  it "should have match body" do
  	expect(@post.body).to eq("My body")
  end

  it "should have matching title" do
  	expect(@post.title).to eq("My title")
  end
end
