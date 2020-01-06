require 'rails_helper'

RSpec.describe "donors/appointments/new", type: :view do
  before(:each) do
    assign(:donors_appointment, Donors::Appointment.new())
  end

  it "renders new donors_appointment form" do
    render

    assert_select "form[action=?][method=?]", donors_appointments_path, "post" do
    end
  end
end
