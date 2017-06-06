class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :real_name
      t.string :image_name
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
  end
end
