class RemoveRegnoFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :regno, :string
  end
end
