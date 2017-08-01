class AddCountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :conutry, :string
  end
end
