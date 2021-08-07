class Borrower < ApplicationRecord
  has_many :loan_orders, dependent: :destroy, autosave: true
  belongs_to :profile
  before_create :remove_whitespace
  before_update :remove_whitespace
  validates :name, :phone, presence: true

  private

  def remove_whitespace
    self.name = self.name.strip
    self.phone = self.phone.strip
  end
end
