class AddAddressToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :address, :string
  end
end
