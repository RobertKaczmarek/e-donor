require 'rails_helper'

RSpec.describe "donors/appointments/show", type: :view do
  before(:each) do
    @donors_appointment = assign(:donors_appointment, Donors::Appointment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
