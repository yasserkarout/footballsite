class AddAddressToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :address, :string
    add_column :matches, :latitude, :float
    add_column :matches, :longitude, :float
  end
end
