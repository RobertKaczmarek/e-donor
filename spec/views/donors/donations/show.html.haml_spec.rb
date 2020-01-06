require 'rails_helper'

RSpec.describe "donors/donations/show", type: :view do
  before(:each) do
    @donors_donation = assign(:donors_donation, Donors::Donation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
