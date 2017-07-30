class AddWebsiteToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :website, :string
  end
end
