class CreateUserTourPreferenceInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tour_preference_interests do |t|
      t.integer :preference_id, null: false
      t.string :interest, null: false

      t.timestamps
    end
    add_index :user_tour_preference_interests, :preference_id
  end
end
