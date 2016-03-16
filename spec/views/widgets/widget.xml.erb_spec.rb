require "rails_helper"

RSpec.describe "widgets/widget.xml.erb" do
	it "render the xml page" do
		render
		expect(rendered).to match /XML/
	end
end
RSpec.describe "widgets/widget.html.erb" do
	it "render the html page" do
		render
		expect(rendered).to match /HTML/
	end
end
