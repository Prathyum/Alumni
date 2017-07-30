class AddWorkmailToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :workmail, :string
  end
end
