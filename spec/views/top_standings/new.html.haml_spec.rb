require 'spec_helper'

describe "top_standings/new" do
  before(:each) do
    assign(:top_standing, stub_model(TopStanding,
      :title => "MyString",
      :system => "MyString",
      :order => 1
    ).as_new_record)
  end

  it "renders new top_standing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", top_standings_path, "post" do
      assert_select "input#top_standing_title[name=?]", "top_standing[title]"
      assert_select "input#top_standing_system[name=?]", "top_standing[system]"
      assert_select "input#top_standing_order[name=?]", "top_standing[order]"
    end
  end
end
