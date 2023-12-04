class RenamePresenceToAbsence < ActiveRecord::Migration[7.1]
  def change
    rename_column :attendances, :presence, :absence
  end
end
