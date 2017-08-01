class AddUnivstateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univstate, :string
  end
end
