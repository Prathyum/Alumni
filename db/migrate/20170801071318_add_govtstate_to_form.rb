class AddGovtstateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtstate, :string
  end
end
