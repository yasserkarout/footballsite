class ChangeDescriptionDatatypeInMatches < ActiveRecord::Migration
  def change
  	change_column :matches, :description, :text
  end
end
