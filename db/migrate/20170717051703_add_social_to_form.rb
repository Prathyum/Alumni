class AddSocialToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :social, :string
  end
end
