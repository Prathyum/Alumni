class AddOtherstreetToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherstreet, :string
  end
end
