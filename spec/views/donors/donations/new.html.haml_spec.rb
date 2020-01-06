require 'rails_helper'

RSpec.describe "donors/donations/new", type: :view do
  before(:each) do
    assign(:donors_donation, Donors::Donation.new())
  end

  it "renders new donors_donation form" do
    render

    assert_select "form[action=?][method=?]", donors_donations_path, "post" do
    end
  end
end
