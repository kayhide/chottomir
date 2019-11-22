require 'rails_helper'

RSpec.describe "Helper::Incidents", type: :request do
  describe "GET /helper/incidents" do
    it "works! (now write some real specs)" do
      get "/helper/incidents"
      expect(response).to have_http_status(200)
    end
  end
end
