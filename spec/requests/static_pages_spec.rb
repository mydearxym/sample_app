# require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end

# 一个 describe 块以及其中的一个测试用例(sample),以 it "..." do 开头的代码块就是一个 用例
require 'spec_helper' 

describe "Static pages" do
    let(:base_title) { "mydearxym's App" }

    describe "Home page" do
        it "should have the content 'Sample App'" do 
            visit '/static_pages/home'
            page.should have_content('Sample App')
        end 

        it "should have the right title" do 
            visit '/static_pages/home'
            page.should have_selector('title',
                :text => "#{base_title}")
        end

        it "should not have a custom page title" do
            visit '/static_pages/home'
            page.should_not have_selector('title', :text => '| Home')
        end

    end

    describe "Help page" do
        it "should have the content 'Help'" do 
            visit '/static_pages/help'
            page.should have_content('Help')
        end 

        it "should have the right title" do 
            visit '/static_pages/help' 
            page.should have_selector('title',
                :text => "#{base_title} | Help")
        end
    end

    describe "About page" do
        it "should have the content 'About Us'" do 
            visit '/static_pages/about'
            page.should have_content('About Us')
        end 
        
        it "should have the right title" do 
            visit '/static_pages/about' 
            page.should have_selector('title',
                :text => "#{base_title} | About Us")
        end
    end
end






