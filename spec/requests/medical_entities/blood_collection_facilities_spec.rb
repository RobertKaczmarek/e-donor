require 'rails_helper'

RSpec.describe "MedicalEntities::BloodCollectionFacilities", type: :request do
  describe "GET /medical_entities/blood_collection_facilities" do
    it "works! (now write some real specs)" do
      get medical_entities_blood_collection_facilities_path
      expect(response).to have_http_status(200)
    end
  end
end
