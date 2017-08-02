class AddCityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :City, :string
  end
end
