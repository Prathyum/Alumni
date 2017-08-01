class AddOtherstateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherstate, :string
  end
end
