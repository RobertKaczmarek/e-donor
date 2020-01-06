require 'rails_helper'

RSpec.describe "medical_entities/blood_collection_facilities/index", type: :view do
  before(:each) do
    assign(:medical_entities_blood_collection_facilities, [
      MedicalEntities::BloodCollectionFacility.create!(
        :medical_entity => nil,
        :name => "Name",
        :opening_hours => "",
        :address => ""
      ),
      MedicalEntities::BloodCollectionFacility.create!(
        :medical_entity => nil,
        :name => "Name",
        :opening_hours => "",
        :address => ""
      )
    ])
  end

  it "renders a list of medical_entities/blood_collection_facilities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
