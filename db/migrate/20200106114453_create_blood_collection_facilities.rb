class CreateBloodCollectionFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_collection_facilities do |t|
      t.references :medical_entity, null: false, foreign_key: true
      t.string :name, null: false, default: ''
      t.jsonb :opening_hours
      t.jsonb :address

      t.timestamps
    end
  end
end
