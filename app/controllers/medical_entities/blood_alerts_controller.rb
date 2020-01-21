module MedicalEntities
  class BloodAlertsController < ApplicationController
  before_action :set_blood_alert, only: [:show, :edit, :update, :destroy]

  # GET /medical_entities/blood_alerts
  # GET /medical_entities/blood_alerts.json
  def index
    @blood_alerts = BloodAlert.all
  end

  # GET /medical_entities/blood_alerts/1
  # GET /medical_entities/blood_alerts/1.json
  def show
  end

  # GET /medical_entities/blood_alerts/new
  def new
    @blood_alert = BloodAlert.new
  end

  # GET /medical_entities/blood_alerts/1/edit
  def edit
  end

  # POST /medical_entities/blood_alerts
  # POST /medical_entities/blood_alerts.json
  def create
    @blood_alert = BloodAlert.new(blood_alert_params)

    respond_to do |format|
      if @blood_alert.save
        format.html { redirect_to medical_entities_blood_alert_path(@blood_alert), notice: 'Blood alert was successfully created.' }
        format.json { render :show, status: :created, location: @blood_alert }
      else
        format.html { render :new }
        format.json { render json: @blood_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_entities/blood_alerts/1
  # PATCH/PUT /medical_entities/blood_alerts/1.json
  def update
    respond_to do |format|
      if @blood_alert.update(blood_alert_params)
        format.html { redirect_to medical_entities_blood_alert_path(@blood_alert), notice: 'Blood alert was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_alert }
      else
        format.html { render :edit }
        format.json { render json: @blood_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_entities/blood_alerts/1
  # DELETE /medical_entities/blood_alerts/1.json
  def destroy
    @blood_alert.destroy
    respond_to do |format|
      format.html { redirect_to medical_entities_blood_alerts_path, notice: 'Blood alert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_alert
      @blood_alert = BloodAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_alert_params
      params.require(:blood_alert).permit(:blood_collection_facility_id, :blood_type)
    end
  end
end
