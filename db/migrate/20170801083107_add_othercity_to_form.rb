class AddOthercityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :othercity, :string
  end
end
