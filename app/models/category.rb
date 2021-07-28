class Category < ApplicationRecord
  has_many :artefacts
  has_one_attached :document
end
