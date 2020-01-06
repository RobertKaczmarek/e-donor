require 'rails_helper'

RSpec.describe "donors/appointments/edit", type: :view do
  before(:each) do
    @donors_appointment = assign(:donors_appointment, Donors::Appointment.create!())
  end

  it "renders the edit donors_appointment form" do
    render

    assert_select "form[action=?][method=?]", donors_appointment_path(@donors_appointment), "post" do
    end
  end
end
