class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.integer :state_id

      t.timestamps
    end
  end
end
