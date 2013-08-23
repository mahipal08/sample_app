require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "It should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Ruby on rails tutorial Sample Application | Home")
    end

    it "should not have empty body" do
      get 'home'
      response.body.should_not=~/<body>\*s<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "It should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Ruby on rails tutorial Sample Application | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "It should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Ruby on rails tutorial Sample Application | About")
    end
  end
end
