class AddExpyearToForm < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :expyear, :integer
  end
end
