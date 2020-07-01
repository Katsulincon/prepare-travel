class Place < ApplicationRecord
  belongs_to :country
  has_many_attached :photos
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
  # after_validation :geocode, if: :will_save_change_to_name?
end
