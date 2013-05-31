require 'spec_helper'

describe "Site" do

  describe "Home page" do

    it "should have the content 'eNegotiation Exhibition'" do
      visit '/site/home'
      expect(page).to have_content('eNegotiation Exhibition')
    end
    
    it "should have the title 'Home'" do
      visit '/site/home'
      expect(page).to have_title('The International eNegotiation Exhibition | Home')
    end
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/site/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/site/about'
      expect(page).to have_title('The International eNegotiation Exhibition | About')
    end
  end
  
  describe "Team page" do

    it "should have the content 'Team'" do
      visit '/site/team'
      expect(page).to have_content('Team')
    end

    it "should have the title 'Meet the Team'" do
      visit '/site/team'
      expect(page).to have_title('The International eNegotiation Exhibition | Meet the Team')
    end
  end
end
