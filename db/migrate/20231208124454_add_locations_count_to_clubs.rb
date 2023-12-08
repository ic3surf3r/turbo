class AddLocationsCountToClubs < ActiveRecord::Migration[7.1]
  def change
    add_column :clubs, :locations_count, :integer
  end
end
