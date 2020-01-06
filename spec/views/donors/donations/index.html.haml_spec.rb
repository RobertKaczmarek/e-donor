require 'rails_helper'

RSpec.describe "donors/donations/index", type: :view do
  before(:each) do
    assign(:donors_donations, [
      Donors::Donation.create!(),
      Donors::Donation.create!()
    ])
  end

  it "renders a list of donors/donations" do
    render
  end
end
