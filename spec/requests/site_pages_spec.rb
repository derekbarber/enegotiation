require 'spec_helper'

describe "Site Pages" do
  
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path } 

    let(:heading)    { 'eNegotiation Exhibition' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_title("| Home") }
  end
  
  describe "About page" do
    before { visit about_path } 
    
    let(:heading)    { 'About' }
    let(:page_title) { 'About' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "Team page" do
    before { visit team_path } 

    let(:heading)    { 'Meet the Team' }
    let(:page_title) { 'Meet the Team' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading)    { 'Contact Us' }
    let(:page_title) { 'Contact Us' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end
end
