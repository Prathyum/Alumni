class RemoveCommunFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :commun, :string
  end
end
