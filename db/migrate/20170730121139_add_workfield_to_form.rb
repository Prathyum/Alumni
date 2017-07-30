class AddWorkfieldToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workfield, :string
  end
end
