require 'spec_helper'

describe "top_standing_entries/index" do
  before(:each) do
    assign(:top_standing_entries, [
      stub_model(TopStandingEntry,
        :top_standing_id => 1,
        :rank => 2,
        :player => "Player",
        :coach => "Coach",
        :country => "Country",
        :comments => "MyText"
      ),
      stub_model(TopStandingEntry,
        :top_standing_id => 1,
        :rank => 2,
        :player => "Player",
        :coach => "Coach",
        :country => "Country",
        :comments => "MyText"
      )
    ])
  end

  it "renders a list of top_standing_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Player".to_s, :count => 2
    assert_select "tr>td", :text => "Coach".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
