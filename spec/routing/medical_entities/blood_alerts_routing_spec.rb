require "rails_helper"

RSpec.describe MedicalEntities::BloodAlertsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/medical_entities/blood_alerts").to route_to("medical_entities/blood_alerts#index")
    end

    it "routes to #new" do
      expect(:get => "/medical_entities/blood_alerts/new").to route_to("medical_entities/blood_alerts#new")
    end

    it "routes to #show" do
      expect(:get => "/medical_entities/blood_alerts/1").to route_to("medical_entities/blood_alerts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medical_entities/blood_alerts/1/edit").to route_to("medical_entities/blood_alerts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/medical_entities/blood_alerts").to route_to("medical_entities/blood_alerts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medical_entities/blood_alerts/1").to route_to("medical_entities/blood_alerts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medical_entities/blood_alerts/1").to route_to("medical_entities/blood_alerts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medical_entities/blood_alerts/1").to route_to("medical_entities/blood_alerts#destroy", :id => "1")
    end
  end
end
