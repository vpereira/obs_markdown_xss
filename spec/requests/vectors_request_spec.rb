require 'rails_helper'

RSpec.describe "Vectors", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/vectors"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/vectors/1"
      expect(response).to have_http_status(:success)
    end
  end

end
