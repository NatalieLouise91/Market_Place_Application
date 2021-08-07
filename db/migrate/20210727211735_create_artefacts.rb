class CreateArtefacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artefacts do |t|
      t.string :name, null: false
      t.string :artist, null: false
      t.string :date, null: false
      t.text :description, null: false
      t.string :dimensions, null: false
      t.float :price, null: false
      t.references :loaner, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
