require 'spec_helper'

describe "participants/new" do
  before(:each) do
    assign(:participant, stub_model(Participant,
      :name => "MyString",
      :content => "MyString",
      :image => "MyString",
      :enabled => false
    ).as_new_record)
  end

  it "renders new participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", participants_path, "post" do
      assert_select "input#participant_name[name=?]", "participant[name]"
      assert_select "input#participant_content[name=?]", "participant[content]"
      assert_select "input#participant_image[name=?]", "participant[image]"
      assert_select "input#participant_enabled[name=?]", "participant[enabled]"
    end
  end
end
