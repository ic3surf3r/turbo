class AddCoordinatesToClubs < ActiveRecord::Migration[7.1]
  def change
    add_column :clubs, :latitude, :float
    add_column :clubs, :longitude, :float
  end
end
