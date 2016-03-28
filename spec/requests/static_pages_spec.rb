require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Rails Tutorial"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it 'should have right title' do
      visit 'static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
    it 'should not have a custom page title' do
      visit 'static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it 'should have right title' do
      visit 'static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have some content on 'Abous us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it 'should have right title' do
      visit '/static_pages/about'
      expect(page).to have_title(" #{base_title} | About Us")
    end
  end

  describe "Contact Page" do
    it "should have some content on 'Contact page'" do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact")
    end
    it 'should should have right title' do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end