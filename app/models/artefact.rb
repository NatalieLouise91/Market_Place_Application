class Artefact < ApplicationRecord
  belongs_to :loaner
  belongs_to :category
  has_one_attached :picture
  accepts_nested_attributes_for :category
end
