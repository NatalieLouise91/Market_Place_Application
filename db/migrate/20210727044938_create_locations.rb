class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :street
      t.string :state
      t.integer :postcode
      t.string :country
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
