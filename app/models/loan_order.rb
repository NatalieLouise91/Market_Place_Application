class LoanOrder < ApplicationRecord
  belongs_to :loaner
  belongs_to :borrower
  belongs_to :artefact
end
