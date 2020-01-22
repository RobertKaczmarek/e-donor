class BloodCollectionFacility < ApplicationRecord
  belongs_to :medical_entity

  has_many :donations, dependent: :destroy
  has_many :announcements, dependent: :destroy

  def to_s
    name
  end
end
