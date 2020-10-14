class CreateBooksCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_categories do |t|
      t.references :book, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :books_categories, %i[book_id category_id], unique: true
  end
end
