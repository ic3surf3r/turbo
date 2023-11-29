class AddColumnInviteTokenToClubs < ActiveRecord::Migration[7.1]
  def change
    add_column :clubs, :invite_token, :string
    add_index :clubs, :invite_token, unique: true
  end
end
