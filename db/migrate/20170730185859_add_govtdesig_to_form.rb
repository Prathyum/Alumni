class AddGovtdesigToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtdesig, :string
  end
end
