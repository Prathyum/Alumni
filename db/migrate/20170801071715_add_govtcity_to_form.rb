class AddGovtcityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtcity, :string
  end
end
