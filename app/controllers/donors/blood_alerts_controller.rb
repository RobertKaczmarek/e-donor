module Donors
  class BloodAlertsController < ApplicationController
  before_action :set_blood_alert, only: %i[show]

  # GET /donors/blood_alerts
  # GET /donors/blood_alerts.json
  def index
    @blood_alerts = BloodAlert.all
  end

  # GET /donors/blood_alerts/1
  # GET /donors/blood_alerts/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_alert
      @blood_alert = BloodAlert.find(params[:id])
    end
  end
end
