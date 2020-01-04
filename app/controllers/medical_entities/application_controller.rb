module MedicalEntities
  class ApplicationController < ActionController::Base
    before_action :authenticate_medical_entity!
  end
end
