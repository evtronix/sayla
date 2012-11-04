class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :answer_id
      t.integer :user_id
      t.integer :question_id
      t.text :content

      t.timestamps
    end
  end
end
