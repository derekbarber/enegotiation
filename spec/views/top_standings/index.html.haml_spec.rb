require 'spec_helper'

describe "top_standings/index" do
  before(:each) do
    assign(:top_standings, [
      stub_model(TopStanding,
        :title => "Title",
        :system => "System",
        :order => 1
      ),
      stub_model(TopStanding,
        :title => "Title",
        :system => "System",
        :order => 1
      )
    ])
  end

  it "renders a list of top_standings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "System".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
