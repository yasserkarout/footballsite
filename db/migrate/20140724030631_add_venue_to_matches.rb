class AddVenueToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :venue, :string
  end
end
