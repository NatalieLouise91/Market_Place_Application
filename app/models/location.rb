class Location < ApplicationRecord
  belongs_to :profile, dependent: :destroy, autosave: true
  before_create :remove_whitespace
  before_update :remove_whitespace

  # belongs to assocation with profile, location is dependent on profile and will delete or update accordingly. 
  # before create and before update callbacks to remove whitespace

  private

  # method to remove whitespace from nested location form in the profile form

  def remove_whitespace
    self.street = self.street.strip
    self.state = self.state.strip
    self.postcode = self.postcode.strip
    self.location = self.location.strip
  end
end
