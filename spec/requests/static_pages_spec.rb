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
    subject { page } #page 就是要测试的对象(subject),这样就可以避免多次使用 page
    
    describe "Home page" do
        before { visit root_path }

        it { should have_selector('h1', text: 'Sample App') }
        it { should have_selector 'title', text: full_title('')} 
        it { should_not have_selector 'title', text: '| Home' }
    end

    describe "Help page" do
        before { visit help_path }

        it { should have_selector('h1',    text: 'Help') }
        it { should have_selector('title', text: full_title('Help')) }
    end

    describe "About page" do
        before { visit about_path }
        it { should have_selector('h1',    text: 'About') }
        it { should have_selector('title', text: full_title('About Us')) }
    end

    describe "Contact page" do
        before { visit contact_path }
        it { should have_selector('h1',    text: 'Contact') }
        it { should have_selector('title', text: full_title('Contact')) }
    end
end






