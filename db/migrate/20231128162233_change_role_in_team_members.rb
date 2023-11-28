class ChangeRoleInTeamMembers < ActiveRecord::Migration[7.1]
  def change
    remove_column :team_members, :role, :string
    add_column :team_members, :is_coach, :boolean, default: false
  end
end
