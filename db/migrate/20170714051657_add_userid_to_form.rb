class AddUseridToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :userid, :integer
  end
end
