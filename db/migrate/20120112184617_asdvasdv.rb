class Asdvasdv < ActiveRecord::Migration
  def up
    change_table :answers do |t|
      t.references :question
    end
  end

  def down
    remove_column :answers, :question_id
  end
end
