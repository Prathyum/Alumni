class AddFieldToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :Field, :string
  end
end
