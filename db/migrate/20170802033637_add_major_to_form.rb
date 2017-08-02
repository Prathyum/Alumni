class AddMajorToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :major, :string
  end
end
