class RemoveColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :avatars, :string
  end
end
