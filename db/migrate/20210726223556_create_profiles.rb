class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :institution_name
      t.text :description
      t.boolean :lending_policy
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
