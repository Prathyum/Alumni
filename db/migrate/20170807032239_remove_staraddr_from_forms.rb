class RemoveStaraddrFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :staraddr, :string
  end
end
