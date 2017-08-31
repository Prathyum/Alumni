class AddFieldsToQuestion < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :acc, :boolean, default: false
    add_column :questions, :rej, :boolean, default: false
  end
end
