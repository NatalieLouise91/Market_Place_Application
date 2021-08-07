class LoanOrder < ApplicationRecord
  belongs_to :loaner
  belongs_to :borrower
  belongs_to :artefact

  # loan order has belong to association with a borrower and a loaner entities
  # loan order has many artefacts associated
end
