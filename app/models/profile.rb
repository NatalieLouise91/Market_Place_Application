class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :location, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :location
end
