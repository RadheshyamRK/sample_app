require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => "Sample App")
      # response.status.should be(200)
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have the custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
        :text => "| Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		# page.should have_content('Help')
      page.should have_selector('h1',
        :text => 'Help')
  	end

    it "should have the '| Help' in the title of the page" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
    		:text => "#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1',
        :text => 'About Us')
  	end

    it "should have the '| About Us' in the title of the page" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
    		:text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',
        :text => 'Contact')
    end
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "#{base_title} | Contact")
    end
  end
end
