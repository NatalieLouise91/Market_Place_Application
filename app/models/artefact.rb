class Artefact < ApplicationRecord
  belongs_to :loaner
  has_one_attached :picture
end
