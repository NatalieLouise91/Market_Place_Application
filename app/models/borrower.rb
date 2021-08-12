class Borrower < ApplicationRecord
  has_many :loan_orders, dependent: :destroy, autosave: true
  belongs_to :profile
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :name, :phone, presence: true

  # before create and before update callbacks used on the new profiles forms and edit profiles form
  # validation of required params to ensure these params are filled out in forms

  private

  # method to remove whitespace from user input

  def remove_whitespace
    self.name = self.name.strip
    self.phone = self.phone.strip
  end
end
