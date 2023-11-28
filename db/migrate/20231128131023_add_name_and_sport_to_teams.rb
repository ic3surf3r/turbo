class AddNameAndSportToTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :name, :string
    add_column :teams, :sport, :string
  end
end
