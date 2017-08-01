class AddWorkstreetToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workstreet, :string
  end
end
