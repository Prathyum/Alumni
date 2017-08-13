class RemoveStudentIdFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :student_id, :integer
  end
end
