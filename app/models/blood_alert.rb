class BloodAlert < ApplicationRecord
  belongs_to :blood_collection_facility

  enum blood_type: BLOOD_TYPES

  def blood_type=(value)
    value = value.to_i if value.is_a? String
    super(value)
  end
end
