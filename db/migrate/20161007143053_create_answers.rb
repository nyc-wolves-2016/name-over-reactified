class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.integer :user_id, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
