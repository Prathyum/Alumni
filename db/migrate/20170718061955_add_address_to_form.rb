class AddAddressToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :address, :string
  end
end
