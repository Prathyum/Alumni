class RemoveSocialFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :social, :string
  end
end
