module MedicalEntities
  class BloodCollectionFacilitiesController < ApplicationController
    before_action :set_blood_collection_facility, only: %i[show edit update destroy]

    # GET /medical_entities/blood_collection_facilities
    # GET /medical_entities/blood_collection_facilities.json
    def index
      @blood_collection_facilities = BloodCollectionFacility.all
    end

    # GET /medical_entities/blood_collection_facilities/1
    # GET /medical_entities/blood_collection_facilities/1.json
    def show
    end

    # GET /medical_entities/blood_collection_facilities/new
    def new
      @blood_collection_facility = BloodCollectionFacility.new
    end

    # GET /medical_entities/blood_collection_facilities/1/edit
    def edit
    end

    # POST /medical_entities/blood_collection_facilities
    # POST /medical_entities/blood_collection_facilities.json
    def create
      @blood_collection_facility = BloodCollectionFacility.new(blood_collection_facility_params)

      respond_to do |format|
        if @blood_collection_facility.save
          format.html { redirect_to medical_entities_blood_collection_facility_path(@blood_collection_facility), notice: 'Blood collection facility was successfully created.' }
          format.json { render :show, status: :created, location: @blood_collection_facility }
        else
          format.html { render :new }
          format.json { render json: @blood_collection_facility.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /medical_entities/blood_collection_facilities/1
    # PATCH/PUT /medical_entities/blood_collection_facilities/1.json
    def update
      respond_to do |format|
        if @blood_collection_facility.update(blood_collection_facility_params)
          format.html { redirect_to medical_entities_blood_collection_facility_path(@blood_collection_facility), notice: 'Blood collection facility was successfully updated.' }
          format.json { render :show, status: :ok, location: @blood_collection_facility }
        else
          format.html { render :edit }
          format.json { render json: @blood_collection_facility.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /medical_entities/blood_collection_facilities/1
    # DELETE /medical_entities/blood_collection_facilities/1.json
    def destroy
      @blood_collection_facility.destroy
      respond_to do |format|
        format.html { redirect_to medical_entities_blood_collection_facilities_path, notice: 'Blood collection facility was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_blood_collection_facility
      @blood_collection_facility = BloodCollectionFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_collection_facility_params
      params.require(:blood_collection_facility).
        permit(:medical_entity_id, :name,
               opening_hours: %i[monday tuesday wednesday thursday friday saturday sunday],
               address: %i[street city state zip])
    end
  end
end
