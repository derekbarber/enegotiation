require 'spec_helper'

describe "top_standings/edit" do
  before(:each) do
    @top_standing = assign(:top_standing, stub_model(TopStanding,
      :title => "MyString",
      :system => "MyString",
      :order => 1
    ))
  end

  it "renders the edit top_standing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", top_standing_path(@top_standing), "post" do
      assert_select "input#top_standing_title[name=?]", "top_standing[title]"
      assert_select "input#top_standing_system[name=?]", "top_standing[system]"
      assert_select "input#top_standing_order[name=?]", "top_standing[order]"
    end
  end
end
