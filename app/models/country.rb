class Country < ApplicationRecord
  has_many :places
  # has_many :photos, through: :places   #It doesn't work
end
