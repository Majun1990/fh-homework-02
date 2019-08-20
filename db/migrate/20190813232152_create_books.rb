class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :type
      t.string :classification
      t.string :genre
      t.integer :year
      t.timestamps
    end
    add_index :books, :author
  end
end
