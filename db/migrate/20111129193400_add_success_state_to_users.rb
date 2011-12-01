class AddSuccessStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :successful, :boolean
  end
end
