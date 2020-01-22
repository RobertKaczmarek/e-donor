module Donors
  class AnnouncementsController < ApplicationController
    before_action :set_announcement, only: :show

    # GET /donors/announcements
    # GET /donors/announcements.json
    def index
      @announcements = Announcement.all
    end

    # GET /donors/announcements/1
    # GET /donors/announcements/1.json
    def show
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end
  end
end
