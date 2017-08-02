class AddCountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :Country, :string
  end
end
