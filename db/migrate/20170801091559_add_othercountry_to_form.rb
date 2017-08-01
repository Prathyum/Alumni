class AddOthercountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :othercountry, :string
  end
end
