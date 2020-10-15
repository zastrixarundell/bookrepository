class AddPriceToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :price, :float, default: 0
  end
end
