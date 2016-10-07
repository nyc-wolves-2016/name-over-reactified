class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value, null: false
      t.integer :user_id, null: false
      t.integer :voteable_id, null: false
      t.string :voteable_type, null: false

      t.timestamps
    end
  end
end
