class AddAdminuserToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :adminuser, :boolean
  end
end
