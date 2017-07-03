class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.references :restaurant, foreign_key: true
      t.string :menu_name
      t.text :menu_description

      t.timestamps
    end
  end
end
