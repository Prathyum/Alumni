class AddEntaptToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :entapt, :string
  end
end
