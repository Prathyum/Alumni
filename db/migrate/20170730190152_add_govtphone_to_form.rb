class AddGovtphoneToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtphone, :string
  end
end
