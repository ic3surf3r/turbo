class ChangeClubMembersRolesToIsManager < ActiveRecord::Migration[7.1]
  def change
    remove_column :club_members, :role, :string
    add_column :club_members, :is_manager, :boolean, default: false
  end
end
