class AddZipToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :Zip, :string
  end
end
