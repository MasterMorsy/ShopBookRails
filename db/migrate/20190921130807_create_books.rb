class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.string :img_url

      t.timestamps
    end
    add_index :books, :title
  end
end
