class Category < ApplicationRecord
  has_many :artefacts, dependent: :destroy, autosave: true
  has_one_attached :document
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :material, :condition, :description, presence: true

  # has many relation with artefacts 
  # category is dependent on artefacts and will be deleted when artefact is deleted and updated when artefact is updated.
  # before create and before update callback for white space method
  # validation of required params to ensure these params are filled out in forms

  private

  # white space method to remove trailing whitespace from user input in new artefact form

  def remove_whitespace
    self.material = self.material.strip
    self.condition = self.condition.strip
    self.description = self.description.strip
  end
end
