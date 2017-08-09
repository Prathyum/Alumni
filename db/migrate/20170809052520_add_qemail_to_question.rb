class AddQemailToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :qemail, :string
  end
end
