class BloodCollectionFacility < ApplicationRecord
  belongs_to :medical_entity

  has_many :donations, dependent: :destroy

  def to_s
    name
  end
end
