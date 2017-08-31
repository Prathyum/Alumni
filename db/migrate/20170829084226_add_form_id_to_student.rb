class AddFormIdToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :form_id, :integer
    add_index :students, :form_id
  end
end
