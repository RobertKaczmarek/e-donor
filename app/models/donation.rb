class Donation < ApplicationRecord
  belongs_to :donor, dependent: :destroy
  belongs_to :blood_collection_facility, dependent: :destroy

  scope :attended, -> { where attended: true }
  scope :latest, -> { order(created_at: :desc) }
  scope :in_year, ->(year) { where('extract(year from donations.created_at) = ?', year) }
end
