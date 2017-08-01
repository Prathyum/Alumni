class AddWorkcountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workcountry, :string
  end
end
