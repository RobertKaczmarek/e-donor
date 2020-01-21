require 'rails_helper'

RSpec.describe "medical_entities/blood_alerts/index", type: :view do
  before(:each) do
    assign(:medical_entities_blood_alerts, [
      MedicalEntities::BloodAlert.create!(
        :blood_type => 2
      ),
      MedicalEntities::BloodAlert.create!(
        :blood_type => 2
      )
    ])
  end

  it "renders a list of medical_entities/blood_alerts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
