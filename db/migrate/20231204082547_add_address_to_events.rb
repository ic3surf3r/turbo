class AddAddressToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :address, :string
  end
end
