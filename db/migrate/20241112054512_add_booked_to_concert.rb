class AddBookedToConcert < ActiveRecord::Migration[7.1]
  def change
    add_column :concerts, :booked, :boolean
  end
end
