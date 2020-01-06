require "rails_helper"

RSpec.describe Donors::AppointmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/donors/appointments").to route_to("donors/appointments#index")
    end

    it "routes to #new" do
      expect(:get => "/donors/appointments/new").to route_to("donors/appointments#new")
    end

    it "routes to #show" do
      expect(:get => "/donors/appointments/1").to route_to("donors/appointments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/donors/appointments/1/edit").to route_to("donors/appointments#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/donors/appointments").to route_to("donors/appointments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/donors/appointments/1").to route_to("donors/appointments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/donors/appointments/1").to route_to("donors/appointments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/donors/appointments/1").to route_to("donors/appointments#destroy", :id => "1")
    end
  end
end
