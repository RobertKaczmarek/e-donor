class BloodCollectionFacility < ApplicationRecord
  belongs_to :medical_entity

  has_many :appointments, dependent: :destroy
end
