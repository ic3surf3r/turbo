class CreateClubMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :club_members do |t|
      t.references :club, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
