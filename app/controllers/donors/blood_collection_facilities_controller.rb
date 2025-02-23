module Donors
  class BloodCollectionFacilitiesController < ApplicationController
    before_action :set_blood_collection_facility, only: %i[show]

    # GET /donors/blood_collection_facilities
    # GET /donors/blood_collection_facilities.json
    def index
      @blood_collection_facilities = BloodCollectionFacility.all
    end

    # GET /donors/blood_collection_facilities/1
    # GET /donors/blood_collection_facilities/1.json
    def show
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_blood_collection_facility
      @blood_collection_facility = BloodCollectionFacility.find(params[:id])
    end
  end
end
