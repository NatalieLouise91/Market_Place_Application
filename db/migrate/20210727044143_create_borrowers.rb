class CreateBorrowers < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowers do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
