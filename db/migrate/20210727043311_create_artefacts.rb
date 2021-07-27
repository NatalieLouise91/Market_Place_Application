class CreateArtefacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artefacts do |t|
      t.string :name
      t.string :artist
      t.string :date
      t.text :description
      t.string :dimensions
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
