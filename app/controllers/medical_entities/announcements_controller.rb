module MedicalEntities
  class AnnouncementsController < ApplicationController
    before_action :set_announcement, only: [:show, :edit, :update, :destroy]

    # GET /medical_entities/announcements
    # GET /medical_entities/announcements.json
    def index
      @announcements = Announcement.all
    end

    # GET /medical_entities/announcements/1
    # GET /medical_entities/announcements/1.json
    def show
    end

    # GET /medical_entities/announcements/new
    def new
      @announcement = Announcement.new
    end

    # GET /medical_entities/announcements/1/edit
    def edit
    end

    # POST /medical_entities/announcements
    # POST /medical_entities/announcements.json
    def create
      @announcement = Announcement.new(announcement_params)

      respond_to do |format|
        if @announcement.save
          format.html { redirect_to medical_entities_announcement_path(@announcement), notice: 'Announcement was successfully created.' }
          format.json { render :show, status: :created, location: @announcement }
        else
          format.html { render :new }
          format.json { render json: @announcement.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /medical_entities/announcements/1
    # PATCH/PUT /medical_entities/announcements/1.json
    def update
      respond_to do |format|
        if @announcement.update(announcement_params)
          format.html { redirect_to medical_entities_announcement_path(@announcement), notice: 'Announcement was successfully updated.' }
          format.json { render :show, status: :ok, location: @announcement }
        else
          format.html { render :edit }
          format.json { render json: @announcement.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /medical_entities/announcements/1
    # DELETE /medical_entities/announcements/1.json
    def destroy
      @announcement.destroy
      respond_to do |format|
        format.html { redirect_to medical_entities_announcements_path, notice: 'Announcement was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def announcement_params
      params.require(:announcement).permit(:blood_collection_facility_id, :title, :content)
    end
  end
end
