require 'rails_helper'

RSpec.describe "Donors::Appointments", type: :request do
  describe "GET /donors/appointments" do
    it "works! (now write some real specs)" do
      get donors_appointments_path
      expect(response).to have_http_status(200)
    end
  end
end
