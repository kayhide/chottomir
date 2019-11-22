require 'rails_helper'

RSpec.describe "Sitter::Incidents", type: :request do
  describe "GET /sitter/incidents" do
    it "works! (now write some real specs)" do
      get "/sitter/incidents"
      expect(response).to have_http_status(200)
    end
  end
end
