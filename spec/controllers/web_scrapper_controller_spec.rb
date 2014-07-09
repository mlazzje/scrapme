require 'rails_helper'

RSpec.describe WebScrapperController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe "GET 'scrapping'" do
    it "returns http success" do
      get 'scrapping'
      expect(response).to be_success
    end
  end

end
