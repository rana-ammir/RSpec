require 'rails_helper'

RSpec.describe "widgets/index", type: :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        :name => "slicer"
      ),
      Widget.create!(
        :name => "dicer"
      )
    ])
  end

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "slicer".to_s, :count => 1
  end

  it "display all the widgets" do
    render
    expect(rendered).to match /slicer/
    expect(rendered).to match /dicer/
  end

  it "matches the Rails environment by using symbols for keys" do
    [:controller, :action].each { |k| expect(controller.request.path_parameters.keys).to include(k) }
  end

end
