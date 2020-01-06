class Appointment < ApplicationRecord
  belongs_to :donor, dependent: :destroy
  belongs_to :blood_collection_facility, dependent: :destroy
end
