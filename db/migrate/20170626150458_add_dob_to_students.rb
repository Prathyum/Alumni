class AddDobToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :dob, :date
        add_index  :students, :dob, unique: true
  end
end
