class RemoveLatFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :lat, :decimal
  end
end
