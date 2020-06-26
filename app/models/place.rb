class Place < ApplicationRecord
  belongs_to :country
  has_many_attached :photos
end
