require 'spec_helper'

describe "Site" do
  
  let(:base_title) { "The International eNegotiation Exhibition" }

  describe "Home page" do

    it "should have the content 'eNegotiation Exhibition'" do
      visit '/site/home'
      expect(page).to have_content('eNegotiation Exhibition')
    end
    
    it "should have the base title" do
      visit '/site/home'
      expect(page).to have_title("#{base_title}")
    end
    
    it "should not have a custom page title" do
      visit '/site/home'
      expect(page).not_to have_title("| Home")
    end
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/site/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/site/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
  
  describe "Team page" do

    it "should have the content 'Team'" do
      visit '/site/team'
      expect(page).to have_content('Team')
    end

    it "should have the title 'Meet the Team'" do
      visit '/site/team'
      expect(page).to have_title("#{base_title} | Meet the Team")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit '/site/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/site/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end
