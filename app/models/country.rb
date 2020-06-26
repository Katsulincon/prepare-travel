class Country < ApplicationRecord
  has_many :photos, through: :places
end
