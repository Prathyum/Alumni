class AddGovtsectorToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :govtsector, :string
  end
end
