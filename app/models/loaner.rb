class Loaner < ApplicationRecord
  has_many :artefacts
  has_many :borrowers
  belongs_to :profile
end
