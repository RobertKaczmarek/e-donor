class CreateBloodAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_alerts do |t|
      t.references :blood_collection_facility, null: false, foreign_key: true
      t.integer :blood_type

      t.timestamps
    end
  end
end
