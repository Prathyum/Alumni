class RemoveCemailToQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :cemail, :string
  end
end
