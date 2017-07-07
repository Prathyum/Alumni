class AddStunameToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :stuname, :string
        add_index  :students, :stuname, unique: true
  end
end
