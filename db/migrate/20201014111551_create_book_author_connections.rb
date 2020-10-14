class CreateBookAuthorConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :book_author_connections do |t|
      t.references :book, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
