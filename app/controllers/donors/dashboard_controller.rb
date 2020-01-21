module Donors
  class DashboardController < ApplicationController
    def index
      @donations = current_donor.donations.attended
      @blood_alerts = BloodAlert.all
    end
  end
end
