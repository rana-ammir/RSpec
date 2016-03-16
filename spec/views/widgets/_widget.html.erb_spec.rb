require "rails_helper"

RSpec.describe "rendering locals in a partial" do
	it "displays the widget" do
    	widget = Widget.create!(:name => "Slicer")

    	render :partial => "widgets/widget.html.erb", :locals => {:widget => widget}

    	expect(rendered).to match /Slicer/
  	end
end
