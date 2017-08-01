class AddEntzipToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entzip, :string
  end
end
