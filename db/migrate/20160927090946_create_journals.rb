class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.date :checkin_at
      t.integer :karte_no
      t.integer :quantity
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
