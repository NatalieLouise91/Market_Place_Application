class Borrower < ApplicationRecord
  has_many :loan_orders
  belongs_to :user
end
