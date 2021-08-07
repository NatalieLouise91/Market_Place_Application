class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :street, null: false
      t.string :state, null: false
      t.string :postcode, null: false
      t.string :location, null: false
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
