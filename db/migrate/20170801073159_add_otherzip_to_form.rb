class AddOtherzipToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherzip, :string
  end
end
