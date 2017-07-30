class AddCoursedurationToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :courseduration, :integer
  end
end
