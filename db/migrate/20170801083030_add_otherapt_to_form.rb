class AddOtheraptToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherapt, :string
  end
end
