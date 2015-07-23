require 'rails_helper'

RSpec.describe Frontent::BeetleController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #secondview" do
    it "returns http success" do
      get :secondview
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #stylist" do
    it "returns http success" do
      get :stylist
      expect(response).to have_http_status(:success)
    end
  end

end
