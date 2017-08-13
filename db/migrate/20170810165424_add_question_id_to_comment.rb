class AddQuestionIdToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :question_id, :integer
    add_index :comments, :question_id
  end
end
