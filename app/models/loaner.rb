class Loaner < ApplicationRecord
  has_many :artefacts, dependent: :destroy, autosave: true
  belongs_to :profile
  has_many :loan_orders, dependent: :destroy, autosave: true
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :name, :phone, presence: true

  # has many association with artefacts. When artefacts is updated/ deleted loaner is also affected
  # belongs to the profile entity
  # has many association with loan orders.
  # before create and before update method to remove whitespace from profile form

  private

  # method to remove whitespace from user input for loaner field in profile form

  def remove_whitespace
    self.name = self.name.strip
    self.phone = self.phone.strip
  end
end
