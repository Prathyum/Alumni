class AddOtheraddressToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otheraddress, :string
  end
end
