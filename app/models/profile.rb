class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :location
end
