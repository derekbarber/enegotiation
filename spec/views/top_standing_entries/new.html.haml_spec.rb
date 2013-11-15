require 'spec_helper'

describe "top_standing_entries/new" do
  before(:each) do
    assign(:top_standing_entry, stub_model(TopStandingEntry,
      :top_standing_id => 1,
      :rank => 1,
      :player => "MyString",
      :coach => "MyString",
      :country => "MyString",
      :comments => "MyText"
    ).as_new_record)
  end

  it "renders new top_standing_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", top_standing_entries_path, "post" do
      assert_select "input#top_standing_entry_top_standing_id[name=?]", "top_standing_entry[top_standing_id]"
      assert_select "input#top_standing_entry_rank[name=?]", "top_standing_entry[rank]"
      assert_select "input#top_standing_entry_player[name=?]", "top_standing_entry[player]"
      assert_select "input#top_standing_entry_coach[name=?]", "top_standing_entry[coach]"
      assert_select "input#top_standing_entry_country[name=?]", "top_standing_entry[country]"
      assert_select "textarea#top_standing_entry_comments[name=?]", "top_standing_entry[comments]"
    end
  end
end
