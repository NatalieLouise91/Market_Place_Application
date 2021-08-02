class CreateLoanOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :loan_orders do |t|
      t.references :loaner, null: false, foreign_key: true
      t.references :borrower, null: false, foreign_key: true
      t.references :artefact, null: false, foreign_key: true
      t.string :stripe_payment_id
      t.string :receipt_url

      t.timestamps
    end
  end
end
