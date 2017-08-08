class RemoveAreaofintersetFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :areaofinterset, :string
  end
end
