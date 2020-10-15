class AddAlternativeNameToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :alternative_name, :string, default: nil
  end
end
