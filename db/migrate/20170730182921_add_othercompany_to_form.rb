class AddOthercompanyToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :othercompany, :string
  end
end
