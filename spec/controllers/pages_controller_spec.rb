require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "get root path" do
  	it "root_path should be 'home'" do
  	  expect(:get => "/").to route_to(
  	  	:controller => "pages",
  	  	:action => "home"
  	  	)
  	end
  end

end
