module DonationsHelper
  def next_donation
    last_donation = @donations.last
    return 'Now!' unless last_donation

    "In #{(last_donation.date + 8.weeks).to_date}"
  end

  def last_donation
    last_donation = @donations.last
    return 'No donation made so far' unless last_donation

    last_donation.date.to_date
  end

  def donations_left_in_year
    limit = current_donor.donation_per_year
    done_donations = current_donor.donations.attended.in_year(Time.current.year).size
    donations_left = limit - done_donations

    "#{donations_left} donations left in current year!"
  end
end