require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'signup'" do
    it "should be successful" do
      get 'signup'
      response.should be_success
    end
  end

  describe "GET 'partydetails'" do
    it "should be successful" do
      get 'partydetails'
      response.should be_success
    end
  end

  describe "GET 'guestlist'" do
    it "should be successful" do
      get 'guestlist'
      response.should be_success
    end
  end

end
