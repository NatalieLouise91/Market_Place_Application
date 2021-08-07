class Category < ApplicationRecord
  has_many :artefacts, dependent: :destroy, autosave: true
  has_one_attached :document
end
