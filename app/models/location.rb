class Location < ApplicationRecord
  belongs_to :profile, dependent: :destroy, autosave: true
end
