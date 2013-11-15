require 'spec_helper'

describe "participants/show" do
  before(:each) do
    @participant = assign(:participant, stub_model(Participant,
      :name => "Name",
      :content => "Content",
      :image => "Image",
      :enabled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Content/)
    rendered.should match(/Image/)
    rendered.should match(/false/)
  end
end
