require 'rails_helper'

RSpec.describe "medical_entities/blood_collection_facilities/show", type: :view do
  before(:each) do
    @medical_entities_blood_collection_facility = assign(:medical_entities_blood_collection_facility, MedicalEntities::BloodCollectionFacility.create!(
      :medical_entity => nil,
      :name => "Name",
      :opening_hours => "",
      :address => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
