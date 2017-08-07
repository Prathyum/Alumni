class RemoveStarcompanyFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :starcompany, :string
  end
end
