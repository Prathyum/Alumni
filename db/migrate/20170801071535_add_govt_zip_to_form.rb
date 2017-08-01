class AddGovtZipToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtZip, :string
  end
end
