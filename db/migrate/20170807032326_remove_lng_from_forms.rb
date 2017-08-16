class RemoveLngFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :lng, :decimal
  end
end
