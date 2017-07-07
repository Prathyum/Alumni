class AddRegnoToStudents < ActiveRecord::Migration[5.1]
  def change
  	    add_column :students, :regno, :string
        add_index  :students, :regno, unique: true
  end
end
