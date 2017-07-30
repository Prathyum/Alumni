class AddOtherdesignationToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherdesignation, :string
  end
end
