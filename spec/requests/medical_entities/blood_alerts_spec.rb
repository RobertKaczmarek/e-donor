require 'rails_helper'

RSpec.describe "MedicalEntities::BloodAlerts", type: :request do
  describe "GET /medical_entities/blood_alerts" do
    it "works! (now write some real specs)" do
      get medical_entities_blood_alerts_path
      expect(response).to have_http_status(200)
    end
  end
end
