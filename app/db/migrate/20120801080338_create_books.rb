class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :name
      t.date :published
      t.string :publisher
      t.integer :price
      t.string :author

      t.timestamps
    end
  end
end
