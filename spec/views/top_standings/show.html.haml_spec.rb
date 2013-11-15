require 'spec_helper'

describe "top_standings/show" do
  before(:each) do
    @top_standing = assign(:top_standing, stub_model(TopStanding,
      :title => "Title",
      :system => "System",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/System/)
    rendered.should match(/1/)
  end
end
