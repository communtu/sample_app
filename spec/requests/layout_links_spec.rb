require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do

  end
  
    it "should have a signup page at '/signup'" do
      get '/signup'
      response.should have_selector("title", :content => "Sign up") 
    end  

end
