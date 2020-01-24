class BloodAlertMailer < ApplicationMailer
  def new_blood_alert
    @blood_alert = params.dig :blood_alert

    Donor.find_each { |donor| mail to: donor.email, subject: 'New blood alert!' }
  end
end
