class AddGovtaddToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtadd, :string
  end
end
