class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :questionText

      t.timestamps
    end
  end
end
