class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :questionId
      t.text :answerText
      t.references :user

      t.timestamps
    end
    add_index :answers, :user_id
  end
end
