class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :material
      t.string :condition
      t.text :description

      t.timestamps
    end
  end
end