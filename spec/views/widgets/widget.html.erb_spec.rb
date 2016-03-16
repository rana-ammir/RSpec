require "rails_helper"

RSpec.describe "rendering the widget template" do
	it "should be display widget" do
		assign(:widget, Widget.create!(:name => "slicer"))

    	render :template => "widgets/widget.html.erb"

    	expect(rendered).to match /slicer/
	end
end