class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :picture
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
