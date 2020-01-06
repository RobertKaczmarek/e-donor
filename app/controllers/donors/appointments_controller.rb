module Donors
  class AppointmentsController < ApplicationController
    before_action :set_appointment, only: %i[show edit update destroy]

    # GET /donors/appointments
    # GET /donors/appointments.json
    def index
      @appointments = Appointment.all
    end

    # GET /donors/appointments/1
    # GET /donors/appointments/1.json
    def show
    end

    # GET /donors/appointments/new
    def new
      @appointment = Appointment.new
    end

    # GET /donors/appointments/1/edit
    def edit
    end

    # POST /donors/appointments
    # POST /donors/appointments.json
    def create
      @appointment = Appointment.new(appointment_params)

      respond_to do |format|
        if @appointment.save
          format.html { redirect_to donors_appointments_path(@appointment), notice: 'Appointment was successfully created.' }
          format.json { render :show, status: :created, location: @appointment }
        else
          format.html { render :new }
          format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /donors/appointments/1
    # PATCH/PUT /donors/appointments/1.json
    def update
      respond_to do |format|
        if @appointment.update(appointment_params)
          format.html { redirect_to donors_appointments_path(@appointment), notice: 'Appointment was successfully updated.' }
          format.json { render :show, status: :ok, location: @appointment }
        else
          format.html { render :edit }
          format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /donors/appointments/1
    # DELETE /donors/appointments/1.json
    def destroy
      @appointment.destroy
      respond_to do |format|
        format.html { redirect_to donors_appointments_path, notice: 'Appointment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).
        permit(:donor_id, :blood_collection_facility_id, :date, :attended)
    end
  end
end
