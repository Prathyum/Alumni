class AddStreetToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :street, :string
  end
end
