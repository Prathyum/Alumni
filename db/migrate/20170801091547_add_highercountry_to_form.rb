class AddHighercountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :highercountry, :string
  end
end
