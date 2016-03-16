require "rails_helper"

RSpec.describe "rendering text directly, without any view" do
	it "display the given text" do 
		render :text => "this is directly render"
		expect(rendered).to match /this is directly render/
	end
end