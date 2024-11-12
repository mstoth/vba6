class AddUserIdToVenue < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :user_id, :string
  end
end
