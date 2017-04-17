class CreateUserTourPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tour_preferences do |t|
      t.integer :user_id, null: false
      t.string :referrer, null: false
      t.date :tour_date, null: false
      t.string :client_ip, null: false
      t.integer :rating

      t.timestamps
    end
    add_index :user_tour_preferences, :user_id
  end
end
