class CreateBooksAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :books_authors do |t|
      t.references :book, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end

    add_index :books_authors, %i[book_id author_id], unique: true
  end
end
