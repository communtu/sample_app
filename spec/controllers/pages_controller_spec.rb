require 'spec_helper'

describe PagesController do
 render_views

  before(:each) do

  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Home")
    end
    it "should have a heading" do
      get 'home'
      response.should have_selector("h1")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        :content => "Contact")
    end
  end

    describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
        it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content => "Rails App | About")
    end

  end

end
