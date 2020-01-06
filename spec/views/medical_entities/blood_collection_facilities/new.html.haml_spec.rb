require 'rails_helper'

RSpec.describe "medical_entities/blood_collection_facilities/new", type: :view do
  before(:each) do
    assign(:medical_entities_blood_collection_facility, MedicalEntities::BloodCollectionFacility.new(
      :medical_entity => nil,
      :name => "MyString",
      :opening_hours => "",
      :address => ""
    ))
  end

  it "renders new medical_entities_blood_collection_facility form" do
    render

    assert_select "form[action=?][method=?]", medical_entities_blood_collection_facilities_path, "post" do

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[medical_entity_id]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[name]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[opening_hours]"

      assert_select "input[name=?]", "medical_entities_blood_collection_facility[address]"
    end
  end
end
