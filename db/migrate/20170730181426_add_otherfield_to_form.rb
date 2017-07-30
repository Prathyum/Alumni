class AddOtherfieldToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :otherfield, :string
  end
end
