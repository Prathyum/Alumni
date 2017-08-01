class AddEntstateToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entstate, :string
  end
end
