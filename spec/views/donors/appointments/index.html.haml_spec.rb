require 'rails_helper'

RSpec.describe "donors/appointments/index", type: :view do
  before(:each) do
    assign(:donors_appointments, [
      Donors::Appointment.create!(),
      Donors::Appointment.create!()
    ])
  end

  it "renders a list of donors/appointments" do
    render
  end
end
