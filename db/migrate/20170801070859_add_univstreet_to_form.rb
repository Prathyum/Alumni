class AddUnivstreetToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univstreet, :string
  end
end
