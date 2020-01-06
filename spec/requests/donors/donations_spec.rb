require 'rails_helper'

RSpec.describe "Donors::Donations", type: :request do
  describe "GET /donors/donations" do
    it "works! (now write some real specs)" do
      get donors_donations_path
      expect(response).to have_http_status(200)
    end
  end
end
