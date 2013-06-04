require 'spec_helper'

describe "Site" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_content('eNegotiation Exhibition') }
    it { should have_title(full_title('')) }
    it { should_not have_title("| Home") }
  end
  
  describe "About page" do

    before { visit about_path } 
    
    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end
  
  describe "Team page" do

    before { visit team_path } 

    it { should have_content('Team') }
    it { should have_title(full_title('Meet the Team')) }
  end

  describe "Contact page" do

    before { visit contact_path }

    it { should have_content('Contact Us') }
    it { have_title(full_title('Contact Us')) }
  end
end
