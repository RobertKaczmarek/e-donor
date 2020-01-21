require 'rails_helper'

RSpec.describe "medical_entities/blood_alerts/new", type: :view do
  before(:each) do
    assign(:medical_entities_blood_alert, MedicalEntities::BloodAlert.new(
      :blood_type => 1
    ))
  end

  it "renders new medical_entities_blood_alert form" do
    render

    assert_select "form[action=?][method=?]", medical_entities_blood_alerts_path, "post" do

      assert_select "input[name=?]", "medical_entities_blood_alert[blood_type]"
    end
  end
end
