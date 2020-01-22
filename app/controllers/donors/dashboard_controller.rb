module Donors
  class DashboardController < ApplicationController
    def index
      @donations = current_donor.donations.attended
      @blood_alerts = BloodAlert.all
      @announcements = Announcement.order(:created_at).first 3
    end
  end
end
