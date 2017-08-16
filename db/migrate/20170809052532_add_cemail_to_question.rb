class AddCemailToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :cemail, :string
  end
end
