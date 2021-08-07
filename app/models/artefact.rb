class Artefact < ApplicationRecord
  belongs_to :loaner
  belongs_to :category
  has_one_attached :picture
  accepts_nested_attributes_for :category
  has_one :loan_order, dependent: :destroy
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :name, :artist, :date, :description, :dimensions, :price, presence: true

  # an artefact belongs to a loaner and a category. Each artefact belongs to a loan order. 
  # before create and before update callbacks used on the new artefact forms and edit artefact form

  private

  # method to remove whitespace from artefact form

  def remove_whitespace
    self.name = self.name.strip
    self.artist = self.artist.strip
    self.date = self.date.strip
    self.description = self.description.strip
    self.dimensions = self.dimensions.strip
  end
end
