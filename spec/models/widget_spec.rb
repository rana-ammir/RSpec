require 'rails_helper'

RSpec.describe Widget, type: :model do
 it "has none to begin with" do
    expect(Widget.count).to eq 0
  end

  it "has one after adding one" do
    Widget.create
    expect(Widget.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Widget.count).to eq 0
  end

  it "has 8 character length of password" do
  	expect(Widget.password.length).to eq 8
  end

  it "is invalid without a fullname" do
    widget = Widget.new(fullname: nil)
    widget.valid?
    expect(widget.errors[:fullname]).to include("can't be blank")
  end

  it "should not be valid without a password" do
  	widget = Widget.new password: nil
    widget.should_not be_valid
  end
  

  it "should be not be valid with a short password" do
    widget= User.new password: 'short'
    widget.should_not be_valid
  end
  
  it "is valid with a fullname, phone and email" do
    widget = Widget.new(fullname: 'hamza abbasi',email: 'tester@example.com',phone: "111-111-1111", password: 12345678)
    expect(widget).to be_valid
  end
end
