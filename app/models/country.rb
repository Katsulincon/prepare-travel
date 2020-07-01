class Country < ApplicationRecord
  has_many :places
  # has_many :photos, through: :places   #It doesn't work
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
end
