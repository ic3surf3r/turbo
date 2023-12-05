class AddCoachToEvents < ActiveRecord::Migration[7.1]
  def change
    add_reference :events, :team_member, foreign_key: true
  end
end
