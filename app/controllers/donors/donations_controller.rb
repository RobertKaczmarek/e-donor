module Donors
  class DonationsController < ApplicationController
    before_action :set_donation, only: %i[show edit update destroy]

    # GET /donors/donations
    # GET /donors/donations.json
    def index
      @donations = Donation.all
    end

    # GET /donors/donations/1
    # GET /donors/donations/1.json
    def show
    end

    # GET /donors/donations/new
    def new
      @donation = Donation.new
    end

    # GET /donors/donations/1/edit
    def edit
    end

    # POST /donors/donations
    # POST /donors/donations.json
    def create
      @donation = Donation.new(donation_params)

      respond_to do |format|
        if @donation.save
          format.html { redirect_to donors_donations_path(@donation), notice: 'Donation was successfully created.' }
          format.json { render :show, status: :created, location: @donation }
        else
          format.html { render :new }
          format.json { render json: @donation.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /donors/donations/1
    # PATCH/PUT /donors/donations/1.json
    def update
      respond_to do |format|
        if @donation.update(donation_params)
          format.html { redirect_to donors_donations_path(@donation), notice: 'Donation was successfully updated.' }
          format.json { render :show, status: :ok, location: @donation }
        else
          format.html { render :edit }
          format.json { render json: @donation.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /donors/donations/1
    # DELETE /donors/donations/1.json
    def destroy
      @donation.destroy
      respond_to do |format|
        format.html { redirect_to donors_donations_path, notice: 'Donation was successfully destroyed.' }
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
