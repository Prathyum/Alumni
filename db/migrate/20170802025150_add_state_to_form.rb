class AddStateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :State, :string
  end
end
