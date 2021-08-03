class Loaner < ApplicationRecord
  has_many :artefacts, dependent: :destroy, autosave: true
  belongs_to :profile
end
