require 'spec_helper'

describe "top_standing_entries/show" do
  before(:each) do
    @top_standing_entry = assign(:top_standing_entry, stub_model(TopStandingEntry,
      :top_standing_id => 1,
      :rank => 2,
      :player => "Player",
      :coach => "Coach",
      :country => "Country",
      :comments => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Player/)
    rendered.should match(/Coach/)
    rendered.should match(/Country/)
    rendered.should match(/MyText/)
  end
end
