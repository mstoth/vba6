class CreateConcerts < ActiveRecord::Migration[7.1]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :group_id
      t.string :venue_id

      t.timestamps
    end
  end
end
