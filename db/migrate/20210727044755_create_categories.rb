class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :material, null: false
      t.string :condition, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
