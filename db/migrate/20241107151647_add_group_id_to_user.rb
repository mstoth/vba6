class AddGroupIdToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :group_id, :string
    create_join_table :developers, :projects
  end
end
