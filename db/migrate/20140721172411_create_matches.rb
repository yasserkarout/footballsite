class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :sport
      t.string :description
      t.integer :numOfPlayers
      t.string :location
      t.datetime :date

      t.timestamps
    end
  end
end
