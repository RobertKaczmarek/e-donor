require "rails_helper"

RSpec.describe MedicalEntities::BloodCollectionFacilitiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/medical_entities/blood_collection_facilities").to route_to("medical_entities/blood_collection_facilities#index")
    end

    it "routes to #new" do
      expect(:get => "/medical_entities/blood_collection_facilities/new").to route_to("medical_entities/blood_collection_facilities#new")
    end

    it "routes to #show" do
      expect(:get => "/medical_entities/blood_collection_facilities/1").to route_to("medical_entities/blood_collection_facilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medical_entities/blood_collection_facilities/1/edit").to route_to("medical_entities/blood_collection_facilities#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/medical_entities/blood_collection_facilities").to route_to("medical_entities/blood_collection_facilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medical_entities/blood_collection_facilities/1").to route_to("medical_entities/blood_collection_facilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medical_entities/blood_collection_facilities/1").to route_to("medical_entities/blood_collection_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medical_entities/blood_collection_facilities/1").to route_to("medical_entities/blood_collection_facilities#destroy", :id => "1")
    end
  end
end
