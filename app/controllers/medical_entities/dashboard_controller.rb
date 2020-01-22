module MedicalEntities
  class DashboardController < ApplicationController
    def index
      @donations = current_medical_entity.donations
    end
  end
end
