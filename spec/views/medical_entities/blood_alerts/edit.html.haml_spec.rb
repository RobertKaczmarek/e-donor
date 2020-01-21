require 'rails_helper'

RSpec.describe "medical_entities/blood_alerts/edit", type: :view do
  before(:each) do
    @medical_entities_blood_alert = assign(:medical_entities_blood_alert, MedicalEntities::BloodAlert.create!(
      :blood_type => 1
    ))
  end

  it "renders the edit medical_entities_blood_alert form" do
    render

    assert_select "form[action=?][method=?]", medical_entities_blood_alert_path(@medical_entities_blood_alert), "post" do

      assert_select "input[name=?]", "medical_entities_blood_alert[blood_type]"
    end
  end
end
