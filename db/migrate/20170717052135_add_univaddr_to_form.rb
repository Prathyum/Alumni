class AddUnivaddrToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univaddr, :string
  end
end
