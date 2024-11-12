class AddJoinableToGroups < ActiveRecord::Migration[7.1]
  def change
    add_column :groups, :joinable, :boolean
  end
end
