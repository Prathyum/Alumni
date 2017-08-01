class AddUnivzipToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univzip, :string
  end
end
