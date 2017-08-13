class AddStudentIdToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :student_id, :integer
    add_index :comments, :student_id
  end
end
