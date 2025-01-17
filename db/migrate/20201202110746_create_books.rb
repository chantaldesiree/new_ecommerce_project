class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :published_year
      t.text :description
      t.decimal :rating
      t.decimal :price
      t.string :cover_art
      t.string :genre
      t.boolean :on_sale
      t.decimal :sale_price
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
