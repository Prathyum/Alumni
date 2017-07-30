class AddEntdesignationToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entdesignation, :string
  end
end
