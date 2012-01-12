class RemoveQuestionIdFromAnswer < ActiveRecord::Migration
  def up
    remove_column :answers, :questionId
  end

  def down
    add_column :answers, :questionId, :integer
  end
end
