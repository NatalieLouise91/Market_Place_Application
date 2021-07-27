class CreateLoaners < ActiveRecord::Migration[6.0]
  def change
    create_table :loaners do |t|
      t.string :name

      t.timestamps
    end
  end
end
