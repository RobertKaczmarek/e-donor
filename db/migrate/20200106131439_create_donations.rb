class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :donor, null: false, foreign_key: true
      t.references :blood_collection_facility, null: false, foreign_key: true
      t.datetime :date
      t.boolean :attended, default: false

      t.timestamps
    end
  end
end
