class Borrower < ApplicationRecord
  has_many :loan_orders, dependent: :destroy, autosave: true
  belongs_to :profile
end
