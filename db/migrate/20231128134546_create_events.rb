class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.string :title
      t.references :location, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
