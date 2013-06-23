require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before { visit root_path }

    # it "should have the content 'Sample App'" do
    #   expect(page).to have_content('Sample App')
    # end

    # it "should have the base title" do
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    # end

    # it "should not have a custom page title" do
    #   expect(page).not_to have_title('| Home')
    # end

    it { should have_content('Sample App') }
    # it { should have_title("Ruby on Rails Tutorial Sample App") }
    # it { should_not have_title("| Home") }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }

  	# it "should have the content 'Help'" do
  	# 	expect(page).to have_content('Help')
  	# end

    # it "should have title 'Help'" do
    #   expect(page).to have_title("#{base_title} | Help")
    # end
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }

  	# it "should have the content 'About Us'" do
  	# 	expect(page).to have_content('About Us')
  	# end

    # it "should have title 'About Us'" do
    #   expect(page).to have_title("#{base_title} | About Us")
    # end
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }

    # it "should have the content 'Contact'" do
    #   expect(page).to have_content("Contact")
    # end

    # it "should have the title 'Contact'" do
    #   # expect(page).to have_title("#{base_title} | Contact")
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    # end
  end
  
end
