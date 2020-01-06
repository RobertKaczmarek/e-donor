require 'rails_helper'

RSpec.describe "medical_entities/blood_collection_facilities/edit", type: :view do
  before(:each) do
    @medical_entities_blood_collection_facility = assign(:medical_entities_blood_collection_facility, MedicalEntities::BloodCollectionFacility.create!(
      :medical_entity => nil,
      :name => "MyString",
      :opening_hours => "",
      :address => ""
    ))
  end

  it "renders the edit medical_entities_blood_collection_facility form" do
    render

    assert_select "form[action=?][method=?]", medical_entities_blood_collection_facility_path(@medical_entities_blood_collection_facility), "post" do

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[medical_entity_id]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[name]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[opening_hours]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[address]"
    end
  end
end
