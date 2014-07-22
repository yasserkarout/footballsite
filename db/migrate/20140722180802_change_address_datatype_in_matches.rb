class ChangeAddressDatatypeInMatches < ActiveRecord::Migration
  def change
  	change_column :matches, :address, :text
  	
  end
end
