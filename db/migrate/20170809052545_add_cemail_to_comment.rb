class AddCemailToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :cemail, :string
  end
end
