class RemoveLocationFromMatch < ActiveRecord::Migration
  def change
    remove_column :matches, :location, :string
  end
end
