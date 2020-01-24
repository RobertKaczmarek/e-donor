class AnnouncementMailer < ApplicationMailer
  def new_announcement
    @announcement = params.dig :announcement

    Donor.find_each { |donor| mail to: donor.email, subject: 'New announcement!' }
  end
end
