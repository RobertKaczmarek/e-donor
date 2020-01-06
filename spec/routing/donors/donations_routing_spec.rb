require "rails_helper"

RSpec.describe Donors::DonationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/donors/donations").to route_to("donors/donations#index")
    end

    it "routes to #new" do
      expect(:get => "/donors/donations/new").to route_to("donors/donations#new")
    end

    it "routes to #show" do
      expect(:get => "/donors/donations/1").to route_to("donors/donations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/donors/donations/1/edit").to route_to("donors/donations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/donors/donations").to route_to("donors/donations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/donors/donations/1").to route_to("donors/donations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/donors/donations/1").to route_to("donors/donations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/donors/donations/1").to route_to("donors/donations#destroy", :id => "1")
    end
  end
end
