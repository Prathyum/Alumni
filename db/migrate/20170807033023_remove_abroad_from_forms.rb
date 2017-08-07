class RemoveAbroadFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :abroad, :boolean
  end
end
