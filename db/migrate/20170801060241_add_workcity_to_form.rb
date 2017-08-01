class AddWorkcityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workcity, :string
  end
end
