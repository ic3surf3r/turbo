class ChangeColumnDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :attendances, :absence, false
  end
end
