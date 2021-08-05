class Loaner < ApplicationRecord
  has_many :artefacts, dependent: :destroy, autosave: true
  belongs_to :profile
  has_many :loan_orders
end
