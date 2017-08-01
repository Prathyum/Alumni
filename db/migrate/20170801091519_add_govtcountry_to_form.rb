class AddGovtcountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtcountry, :string
  end
end
