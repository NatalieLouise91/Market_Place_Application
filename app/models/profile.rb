class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :location, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :location
  has_one :borrower, dependent: :destroy, autosave: true
  has_one :loaner, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :loaner
  accepts_nested_attributes_for :borrower
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :institution_name, :description, presence: true
  validates :institution_name, uniqueness: true

  # profile belongs to the user and has one attached profile image.
  # profile has associations with the location, borrower and loaner entities, all are dependent the profile entity and will delete and update accordingly.
  # profile has nested forms for location, loaner, and borrowers
  # before create and before update callbacks executes the remove whitespace method

  private

  # method to remove whitespace from the profile form

  def remove_whitespace
    self.institution_name = self.institution_name.strip
    self.description = self.description.strip
  end
end
