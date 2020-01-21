require 'rails_helper'

RSpec.describe "medical_entities/blood_alerts/show", type: :view do
  before(:each) do
    @medical_entities_blood_alert = assign(:medical_entities_blood_alert, MedicalEntities::BloodAlert.create!(
      :blood_type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
