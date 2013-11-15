require 'spec_helper'

describe "participants/index" do
  before(:each) do
    assign(:participants, [
      stub_model(Participant,
        :name => "Name",
        :content => "Content",
        :image => "Image",
        :enabled => false
      ),
      stub_model(Participant,
        :name => "Name",
        :content => "Content",
        :image => "Image",
        :enabled => false
      )
    ])
  end

  it "renders a list of participants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
