class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :current
      t.boolean :is_placed
      t.string :comname
      t.string :comaddr
      t.string :desig
      t.integer :exp
      t.boolean :abroad
      t.string :univ
      t.string :course
      t.string :starcompany
      t.string :staraddr
      t.string :commun
      t.string :mobile
      t.string :curmail
      t.string :linked_id
      t.string :areaofinterset
      t.string :contribute

      t.timestamps
    end
  end
end
