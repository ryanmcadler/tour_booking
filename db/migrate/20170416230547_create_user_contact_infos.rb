class CreateUserContactInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_contact_infos do |t|
      t.integer :user_id, null: false
      t.string :first, null: false
      t.string :last, null: false
      t.string :phone, null: false

      t.timestamps
    end
    add_index :user_contact_infos, :user_id
  end
end
