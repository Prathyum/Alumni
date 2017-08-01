class AddNeighborhoodFieldsToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :street_address, :string
    add_column :forms, :suite_apt, :string
    add_column :forms, :city, :string
    add_column :forms, :state, :string
    add_column :forms, :zip, :string
    add_column :forms, :country, :string
    add_column :forms, :phone, :string
    add_column :forms, :lat, :decimal
    add_column :forms, :lng, :decimal
    add_column :forms, :full_address, :text
  end
end
