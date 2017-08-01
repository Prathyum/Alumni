class AddGovtaptToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtapt, :string
  end
end
