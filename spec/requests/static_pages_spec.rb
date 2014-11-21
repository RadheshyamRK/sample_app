require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => "Sample App")
      # response.status.should be(200)
    end

    it "should have the '| Home' in the title of the page" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

    it "should have the '| Help' in the title of the page" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

    it "should have the '| About Us' in the title of the page" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
