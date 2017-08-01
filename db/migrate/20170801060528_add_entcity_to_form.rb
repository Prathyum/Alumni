class AddEntcityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entcity, :string
  end
end
