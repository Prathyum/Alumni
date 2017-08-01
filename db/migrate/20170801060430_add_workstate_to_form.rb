class AddWorkstateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workstate, :string
  end
end
