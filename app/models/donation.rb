class Donation < ApplicationRecord
  belongs_to :donor, dependent: :destroy
  belongs_to :blood_collection_facility, dependent: :destroy

  scope :attended, -> { where attended: true }
  scope :latest, -> { order(created_at: :desc) }
  scope :in_year, ->(year) { where('extract(year from donations.created_at) = ?', year) }

  validate :donation_date, on: :create

  private

  def donation_date
    next_donation_after = donor.donations.last.date + 8.weeks
    return true if next_donation_after < date

    errors.add(:base, "You can donate after: #{next_donation_after}")
  end
end
