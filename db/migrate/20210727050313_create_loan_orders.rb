class CreateLoanOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :loan_orders do |t|
      t.references :borrower, null: false, foreign_key: true
      t.references :loaner, null: false, foreign_key: true
      t.timestamps
    end
  end
end
