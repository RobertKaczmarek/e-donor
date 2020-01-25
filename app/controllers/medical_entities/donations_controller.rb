module MedicalEntities
  class DonationsController < ApplicationController
    before_action :set_donation, only: %i[show edit update destroy]

    # GET /medical_entities/donations
    # GET /medical_entities/donations.json
    def index
      @donations = Donation.all
    end

    # GET /medical_entities/donations/1
    # GET /medical_entities/donations/1.json
    def show
    end

    # GET /medical_entities/donations/1/edit
    def edit
    end

    # PATCH/PUT /medical_entities/donations/1
    # PATCH/PUT /medical_entities/donations/1.json
    def update
      respond_to do |format|
        if @donation.update(donation_params)
          format.html { redirect_to medical_entities_donation_path(@donation), notice: 'Donation was successfully updated.' }
          format.json { render :show, status: :ok, location: @donation }
        else
          format.html { render :edit }
          format.json { render json: @donation.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /medical_entities/donations/1
    # DELETE /medical_entities/donations/1.json
    def destroy
      @donation.destroy
      respond_to do |format|
        format.html { redirect_to medical_entities_donations_path, notice: 'Donation was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).
        permit(:donor_id, :blood_collection_facility_id, :date, :attended)
    end
  end
end
