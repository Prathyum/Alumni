class AddEntcountryToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entcountry, :string
  end
end
