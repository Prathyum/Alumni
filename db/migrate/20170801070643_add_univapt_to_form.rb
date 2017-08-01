class AddUnivaptToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :univapt, :string
  end
end
