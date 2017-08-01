class AddGovtStreetToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtstreet, :string
  end
end
