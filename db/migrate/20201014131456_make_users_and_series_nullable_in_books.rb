class MakeUsersAndSeriesNullableInBooks < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :user_id, :integer, null: true
    change_column :books, :series_id, :integer, null: true
  end
end
