class CreatePieces < ActiveRecord::Migration[7.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer
      t.string :genre
      t.string :length
      t.string :publisher
      t.string :isbn

      t.timestamps
    end
  end
end
