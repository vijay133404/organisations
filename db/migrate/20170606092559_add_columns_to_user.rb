class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_is, :integer
    add_column :users, :role_id, :integer
    add_column :users, :start_date, :datetime
    add_column :users, :end_date, :datetime
    add_column :users, :monthly_charge, :decimal
    add_column :users, :active, :boolean
    add_column :users, :image_id, :integer
    add_column :users, :notes, :text
  end
end
