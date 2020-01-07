module Donors
  class DashboardController < ApplicationController
    def index
      @donations = current_donor.donations.attended
    end
  end
end
