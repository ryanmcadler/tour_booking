class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :welcome_token, null: false

      t.timestamps
    end
    add_index :users, :welcome_token, unique: true
  end
end
