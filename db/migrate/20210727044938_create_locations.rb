class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :street
      t.string :state
      t.string :postcode
      t.string :location
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
