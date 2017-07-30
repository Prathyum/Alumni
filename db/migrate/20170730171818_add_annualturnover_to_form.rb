class AddAnnualturnoverToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :annualturnover, :string
  end
end
