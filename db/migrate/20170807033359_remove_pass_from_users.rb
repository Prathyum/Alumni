class RemovePassFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :pass, :string
  end
end
