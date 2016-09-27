class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people, id: false do |t|
      t.integer :karte_no, null: false
      t.string :name

      t.timestamps
    end

    add_index :people, :karte_no, :unique => true
  end
end
