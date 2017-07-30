class AddEntcompanyToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entcompany, :string
  end
end
