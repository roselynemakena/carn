class CreateUserType < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types do |t|
      t.string :user_type, default: 4

      t.timestamps
    end
  end
end
