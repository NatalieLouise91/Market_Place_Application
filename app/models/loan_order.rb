class LoanOrder < ApplicationRecord
  belongs_to :borrower
  has_many :artefacts
end
