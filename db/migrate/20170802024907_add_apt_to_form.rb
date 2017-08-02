class AddAptToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :apt, :string
  end
end
