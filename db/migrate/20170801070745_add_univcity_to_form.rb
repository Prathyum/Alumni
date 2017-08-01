class AddUnivcityToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univcity, :string
  end
end
