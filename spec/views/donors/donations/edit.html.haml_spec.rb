require 'rails_helper'

RSpec.describe "donors/donations/edit", type: :view do
  before(:each) do
    @donors_donation = assign(:donors_donation, Donors::Donation.create!())
  end

  it "renders the edit donors_donation form" do
    render

    assert_select "form[action=?][method=?]", donors_donation_path(@donors_donation), "post" do
    end
  end
end
