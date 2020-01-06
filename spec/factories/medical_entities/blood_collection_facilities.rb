FactoryBot.define do
  factory :medical_entities_blood_collection_facility, class: 'MedicalEntities::BloodCollectionFacility' do
    medical_entity { nil }
    name { "MyString" }
    opening_hours { "" }
    address { "" }
  end
end
