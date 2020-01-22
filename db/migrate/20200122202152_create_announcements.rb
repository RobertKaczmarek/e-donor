class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.belongs_to :blood_collection_facility, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
