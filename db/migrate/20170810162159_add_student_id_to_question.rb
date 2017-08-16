class AddStudentIdToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :student_id, :integer
    add_index :questions, :student_id
  end
end
