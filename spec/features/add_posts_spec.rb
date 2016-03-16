require 'rails_helper'
RSpec.feature "adding post" do

	scenario "should allow to user add post" do
		post = create(:post, title: "My other title")
		visit post_path(post)

		expect(page).to have_content("My other title")
		expect(page).to have_content("My new body")
	end

end